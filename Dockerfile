FROM jekyll/jekyll:3.3.1

COPY ./ /data

RUN cd /data \
    && gem update --system 3.2.3 \
    && gem install bundler \
    && bundle install

WORKDIR /code

CMD [ "bundle", "exec", "jekyll", "serve", "--host=0.0.0.0"]
