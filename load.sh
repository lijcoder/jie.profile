c_path=/mnt/d/workspaces/shell/jie.profile/profile.d

if [ -d $c_path ]; then
  for i in ${c_path}/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
