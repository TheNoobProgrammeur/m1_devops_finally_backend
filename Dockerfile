FROM python
WORKDIR /app
COPY . .
ENV DATABASE_URL=postgresql://myUsr:somePwd@localhost:5432/myUsr
ENV FLASK_APP=autoapp.py
ENV CONDUIT_SECRET="something-really-secret"
RUN pip install -r requirements/dev.txt
CMD [ "gunicorn","autoapp:app","-b", " 0.0.0.0:$PORT","-w","3" ]
