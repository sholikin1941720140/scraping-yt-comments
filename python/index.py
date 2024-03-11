from flask import Flask, jsonify, request
import facebook_scraper as fs

app = Flask(__name__)

# Fungsi untuk melakukan validasi pada parameter key
@app.route('/')
def hello_world():
    return 'Hello world!'

@app.route('/get_comments', methods=['GET'])
def get_comments():
    # Mendapatkan nilai ID dan key dari parameter URL
    post_id = request.args.get('id')
    key = request.args.get('key')
    apiKey = "AbataSajaSayangKuCintakuHhhh"
    
    # Melakukan validasi key dan ID
    if post_id and key == apiKey:
        MAX_COMMENTS = 5

        gen = fs.get_posts(
            post_urls=[post_id],
            options={"comments": MAX_COMMENTS, "progress": True}
        )

        post = next(gen)
        comments = post['comments_full']
        return jsonify(comments)
    else:
        return jsonify({'error': 'Key tidak valid atau Parameter id tidak ditemukan'})

if __name__ == '__main__':
    app.run()
