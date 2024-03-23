from flask import Flask, jsonify

app = Flask(__name__)


@app.route('/films', methods=['POST'])
def get_films():
    singleton = Singleton.getInstance()
    singleton.cursor.execute("SELECT * FROM film")
    result = singleton.cursor.fetchall()
    return jsonify(result)

@app.route('/auteurs', methods=['POST'])
def get_auteurs():
    singleton = Singleton.getInstance()
    singleton.cursor.execute("SELECT * FROM auteur")
    result = singleton.cursor.fetchall()
    return jsonify(result)

@app.route('/acteurs', methods=['POST'])
def get_acteurs():
    singleton = Singleton.getInstance()
    singleton.cursor.execute("SELECT * FROM acteur")
    result = singleton.cursor.fetchall()
    return jsonify(result)



@app.route('/film_acteur', methods=['POST'])
def get_film_acteur():
    singleton = Singleton.getInstance()
    singleton.cursor.execute("SELECT * FROM film_acteur")
    result = singleton.cursor.fetchall()
    return jsonify(result)

if __name__ == '__main__':
    app.run(debug=True, port=5000, host='localhost')