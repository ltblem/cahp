nim c -d:release --app:console -o:"./release/cahp" "src/cahp.nim"
# For a Windows binary (currently doesn't work very well):
#: nim c -d:minigw --app:console -o:"./release/cahp.exe" "src/cahp.nim"