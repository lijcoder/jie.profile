APP_HOME=/usr/local/jie.profile/profile.d/

if [ -d $APP_HOME ]; then
  for i in ${APP_HOME}/*.sh; do
    if [ -r $i ]; then
      . $i ${APP_HOME}
    fi
  done
  unset i
fi
