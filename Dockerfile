FROM centos/systemd

LABEL org.label-schema.vendor="Puppet SE Team" \
      org.label-schema.name="Sample App" \
      org.label-schema.license="Apache-2.0" \
      org.label-schema.version="1.0" \
      org.label-schema.build-date="2018-20-11T00:00:00Z" \
      org.label-schema.schema-version="1.0"

RUN rpm -Uvh https://yum.puppet.com/puppet/puppet-release-el-7.noarch.rpm || true && \
yum install -y puppet-bolt && \
bolt puppetfile install && \
bolt plan run myapp::prereqs && \
cp -rf myapp/* /var/www/myapp && \
bolt plan run myapp::webhost && \
yum erase -y puppet-agent && \
yum erase -y puppet-bolt && \
yum clean all && \
ls /var/cache/yum/x86_64/7 && \
rm -rf /var/cache/yum/x86_64/7/puppet*

ENTRYPOINT ["/usr/sbin/init"]