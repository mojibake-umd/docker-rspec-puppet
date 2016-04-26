FROM ruby:2.1

# Add Gemfile
ADD Gemfile /

# Configure to ever install a ruby gem docs then
# Install the relevant gems and cleanup after
RUN printf "gem: --no-rdoc --no-ri" >> /etc/gemrc && \
    gem install json -v '1.8.3' && \
    gem install bundler

# Set Puppet Version
# TODO: Eventually we wont need separate files for this
# https://github.com/docker/docker/issues/14634
ENV puppetversion "~> 4.2"

# Now do the bundle install. I Split this off to minimize differences between 3 and 4
RUN PUPPET_GEM_VERSION=${puppetversion} bundler install --clean --system --gemfile /Gemfile

# Our default command
CMD rm -rf Gemfile.lock && \
    bundle exec rake spec_clean && \
    bundle exec rake spec
