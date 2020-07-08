import pymysql
from gensim.models.doc2vec import Doc2Vec, TaggedDocument
from nltk.tokenize import word_tokenize
from flask import Flask, request, jsonify
import schedule
import time

app = Flask(__name__)
def convertTuple(tup):
    str =  ','.join(tup)
    str =  ''.join(tup[0])
    str1 = ''.join(tup[1])
    return str,str1

def select_all():#분리예정 교육파일 생성후
    arr=[]
    arr1=[]
    conn = pymysql.connect(host='localhost', user='root', password='1234', db='recipe', charset='utf8')
    try:
          with conn.cursor() as curs:
                sql = "select rcpExpl,rcpCode from rcp"
                curs.execute(sql)
                rs = curs.fetchall()
                
                for row in rs:
                    arr.append(convertTuple(row)[0])
                    arr1.append(convertTuple(row)[1])
                return arr,arr1
    finally:
         conn.close()
def do2ve():
    max_epochs = 100
    vec_size = 300
    alpha = 0.025
    data = select_all()[0]
    data1 = select_all()[1]
    tagged_data = []
    for i, _d in enumerate(data):
        tagged_data.append(TaggedDocument(words=word_tokenize(_d.lower()), tags=[data1[i]]))
    model = Doc2Vec(size=vec_size,alpha=alpha, min_alpha=0.00025,min_count=1,dm =1)
    model.build_vocab(tagged_data)
    for epoch in range(max_epochs):
        model.train(tagged_data,total_examples=model.corpus_count,epochs=model.iter)
        # decrease the learning rate
        model.alpha -= 0.0002
        # fix the learning rate, no decay
        model.min_alpha = model.alpha
        model.save("d2v.model")
        print("Model Saved")
def doc2vecUse(data1):
    model= Doc2Vec.load("d2v.model")
    arr=[]
    # to find most similar doc using tags
    print(data1)
    similar_doc = model.docvecs.most_similar(data1)
    print(similar_doc)
    for k in enumerate(similar_doc):
        arr.append(k[1][0])
    return arr
def aiEdu():
    do2ve()

@app.route('/recommend', methods = ['POST'])
def userLogin():
    recomData=request.get_data()
    retData=doc2vecUse(recomData.decode('ascii'))
    #json 데이터를 받아옴
    return jsonify(retData)# 받아온 데이터를 다시 전송
if __name__ == "__main__":
    app.run()
   