FROM python
WORKDIR /app
COPY . .
ENV DATABASE_URL=postgresql://myUsr:somePwd@localhost:5432/myUsr
ENV FLASK_APP=autoapp.py
ENV CONDUIT_SECRET="something-really-secret"
RUN pip install -r requirements
