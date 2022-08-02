rm src/version.nim && touch src/version.nim
echo 'const compd: string ="'$(date "+%Y-%m-%d %H:%M:%S")'"' > src/version.nim
nim c -d:release --app:console -o:"./release/cahp" "src/main.nim"
rm src/version.nim && touch src/version.nim
echo 'const compd: string ="N/A"' > src/version.nim