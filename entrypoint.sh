if [ $# -ne 1 ]; then
    echo You need one argument
    exit 1
fi
case $1 in
    youtube)
        cd ~/hackathon-mstube/Crawler/youtube
        source autorun.sh
        ;;
    channel9)
        cd ~/hackathon-mstube/Crawler/channel9
        source autorun.sh
        ;;
    vimeo)
        cd ~/hackathon-mstube/Crawler/vimeo
        source autorun.sh
        ;;
    *)
        echo Not recognize the argument;;
esac
