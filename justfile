zip-themes:
    @echo "Zipping themes..."
    @zip -r sample.zip content/themes/sample
    @zip -r samtok.zip content/themes/samtok
    @echo "Done!"

run: zip-themes
    @echo "Bootstrapping Ghost in Docker..."
    docker compose up -d
    @echo "Done! Go to http://localhost:2368/ghost to setup"

cleanup:
    @echo "Cleaning up..."
    @rm -f *.zip
    @rm -rf content/apps/
    @rm -rf content/data/
    @rm -rf content/files/
    @rm -rf content/images/
    @rm -rf content/logs/
    @rm -rf content/media/
    @rm -rf content/public/
    @rm -rf content/settings/
    @rm -rf content/themes/casper
    @rm -rf content/themes/source
    docker compose down
    @echo "Cleanup done"

refresh: cleanup run
    @echo "Refreshed Ghost in Docker"