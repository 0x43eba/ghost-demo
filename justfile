zip-themes:
    @echo "Zipping themes..."
    @zip -r sample.zip content/themes/sample
    @echo "Done!"

run: zip-themes
    @echo "Bootstrapping Ghost in Docker..."
    docker compose up -d
    @echo "Done! Go to http://localhost:2368/ghost to setup"

cleanup:
    @echo "Cleaning up..."
    @rm -f sample.zip
    docker compose down
    @echo "Cleanup done"