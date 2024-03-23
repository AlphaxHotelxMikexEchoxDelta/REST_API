from flask import Flask, jsonify
import mysql.connector

app = Flask(__name__)

class Singleton:
    __instance = None
    @staticmethod 
    def getInstance():
        if Singleton.__instance == None:
            Singleton()
        return Singleton.__instance
    def __init__(self):
        if Singleton.__instance != None:
            raise Exception("Cette class est un singleton!")
        else:
            Singleton.__instance = self
            self.connection = mysql.connector.connect(
                host="localhost",
                user="films",
                password="films",
                database="films"
            )
            self.cursor = self.connection.cursor()

@app.route('/genres', methods=['POST'])
def get_genres():
    singleton = Singleton.getInstance()
    singleton.cursor.execute("SELECT * FROM genre")
    result = singleton.cursor.fetchall()
    return jsonify(result)

@app.route('/studios', methods=['POST'])
def get_studios():
    singleton = Singleton.getInstance()
    singleton.cursor.execute("SELECT * FROM studio")
    result = singleton.cursor.fetchall()
    return jsonify(result)

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
