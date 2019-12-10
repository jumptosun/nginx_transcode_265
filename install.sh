#!/bin/bash 

bin_dir="./bin"
include_dir="./include"
lib_dir="./lib"
nginx_dir="./nginx"
share_dir="./share"
prefix_dir="/opt/tmkj_transcode"

install_obj() {
    echo "install to ${prefix_dir}"

    mkdir -p  ${prefix_dir}
    cp -r  ${bin_dir}      ${prefix_dir}
    cp -r  ${include_dir}  ${prefix_dir}
    cp -r  ${lib_dir}      ${prefix_dir}
    cp -r  ${nginx_dir}    ${prefix_dir}
    cp -r  ${share_dir}    ${prefix_dir}

    echo "${prefix_dir}/lib" >> "/etc/ld.so.conf.d/tmkj_transcode.conf"
    ldconfig
}


main() {
    while getopts 'o:' OPT; do
        case $OPT in
        o)
            prefix_dir=${OPTARG}
            ;;
        ?)
            echo "usage: install.sh -o dir_to_install"
            echo "default: /opt/tmkj_transcode"
            exit 0
            ;;
        esac
    done

    install_obj
}

main $*

