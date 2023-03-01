#!/bin/bash

echo 'apimock path: '
read apimock

echo 'crm-frontend path: '
read frontend

echo "
alias crm-account-up='$HOME/crm-account-automation.sh'" >> $HOME/.bashrc

echo "#!/bin/bash

sessionId=\$1
env=\$2

if [ ! \$sessionId ]; then
  echo 'Session ID is necessary!'
  echo 'Example: \"comand <SessionID>\"'
  exit
fi

apimock='$apimock'
frontend='$frontend'

if [ \$env ] && [ \$env = 'production' ]; then
  proxyTarget='https://crm.rdstation.com'
else
  proxyTarget='https://crm-staging.rdstation.com'
fi

echo \"module.exports = {
  proxyTarget: '\$proxyTarget',
  sessionId: '\$sessionId'
}\" > \$apimock/config.js

gnome-terminal --tab --working-directory=\$apimock -- bash -c \"yarn start\"

cd \$frontend
yarn start -- --scope=@resultadosdigitais/crm-account" > $HOME/crm-account-automation.sh

chmod 755 $HOME/crm-account-automation.sh