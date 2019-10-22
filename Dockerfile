FROM ruby:2.5

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
		apt-get update -qq && \
    apt-get install -y \
    postgresql-client \
    nodejs

WORKDIR /argos

COPY Gemfile* /argos/

RUN bundle install

COPY . /argos/

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "s", "-b", "0.0.0.0"]
