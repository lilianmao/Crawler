# _*_ coding:utf-8 _*_
import db
from flask import Flask, render_template, request, jsonify, redirect, flash, url_for

app = Flask(__name__)


@app.route('/')  # 根路径
def index():
    items = db.getItem()
    words = db.getWord()
    count = len(items)
    url = None
    with open('E:\Python Code\Code\Crawler-0.1\urls', 'r') as f:
        url = f.readline()

    return render_template(
        'index.html',
        items=items,
        words=words,
        url = url,
        count = count,
        data=str(db.getCount_byMonth())
    )


@app.route('/search', methods=['POST'])
def Search():
    content = request.form['search_content']
    items = db.searchTitle(content)
    words = db.getWord()
    print '----------',type(items)
    count = len(items)
    url = None
    with open('E:\Python Code\Code\Crawler-0.1\urls', 'r') as f:
        url = f.readline()

    return render_template('index.html',
                           items=items,
                           words=words,
                           url = url,
                           count = count,
                           data=str(db.getCount_byMonth_byContent(content)))


@app.route('/search/<word>', methods=['POST', 'GET'])
def Search_Word(word):
    items = db.searchTitle(word)
    words = db.getWord()
    count = len(items)

    url = None
    with open('E:\Python Code\Code\Crawler-0.1\urls', 'r') as f:
        url = f.readline()

    return render_template('index.html',
                           items=items,
                           words=words,
                           url = url,
                           count = count,
                           data=str(db.getCount_byMonth_byContent(word)))


@app.route('/content.html/<int:id>', methods=['POST', 'GET'])
def Content(id):
    item = db.getUser_byId(id)
    return render_template('content.html', item=item)


@app.route('/add_word', methods=['POST', 'GET'])
def Add_Word():
    word = request.form.get('word')
    db.addWord(word)
    return jsonify(word=word)


@app.route('/delete_word', methods=['POST', 'GET'])
def Delete_Word():
    word = request.form.get('word')
    db.deleteWord(word)
    return jsonify(word=word)


@app.route('/set_url', methods=['POST'])
def set_url():
    items = db.getItem()
    count = len(items)
    data = request.form
    url = data.get('url', None)
    # if url is None:
    #     flash('URL为空', 'danger')


    # 写入文件
    with open('E:\Python Code\Code\Crawler-0.1\urls', 'w') as f:
        f.write(url)

    items = db.getItem()
    words = db.getWord()
    return render_template(
        'index.html',
        items=items,
        words=words,
        url = url,
        count = count,
        data=str(db.getCount_byMonth())
    )

@app.route('/empty_sql', methods=['POST'])
def empty_sql():
    items = db.getItem()
    words = db.getWord()
    count = len(items)
    url = None
    with open('E:\Python Code\Code\Crawler-0.1\urls', 'r') as f:
        url = f.readline()

    db.emptySql();

    return render_template(
        'index.html',
        items=items,
        words=words,
        url = url,
        count = count,
        data=str(db.getCount_byMonth())
    )

if __name__ == '__main__':
    app.run(debug=True)
