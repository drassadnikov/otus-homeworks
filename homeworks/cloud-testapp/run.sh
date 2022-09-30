#!/bin/bash
EXIT_STATUS=0

chmod +x ./install_ruby.sh
chmod +x ./install_mongodb.sh
chmod +x ./deploy.sh
./install_ruby.sh
./install_mongodb.sh
./deploy.sh
inspec exec otus-homeworks/homeworks/$BRANCH || EXIT_STATUS=$?

exit $EXIT_STATUS
