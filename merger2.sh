git subtree add --prefix third_party/common-config https://github.com/xanjohns/common-config.git subtree-script --squash

    #Make necessary directories
    shopt -s dotglob
    dirs=`find -type d -path "*third_party/common-config*" -not -path "./.git/*" -not -path "./.git"`
    for dir in $dirs
    do
      mkdir ${dir##*common-config/}
    done
    mkdir orig

    #Copy old files and replace with common-config
    files=`find -type f -path "*third_party/common-config*" -not -name "merger*" -not -path "./.git/*"`
    for file in $files
    do
      [[ -f ${file##*common-config/} ]] && cp ${file##*common-config/} "orig/${file##*/}-orig"
      filedir="$(dirname $file)"
      mv $file .${filedir##*common-config}
    done
