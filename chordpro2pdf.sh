OIFS="$IFS"
IFS=$'\n'

for i in $(ls Chordpro); do
    name=$(basename "$i" .chordpro)
    if [ ! -f PDF/$name.pdf ]; then
        chordpro --no-chord-grids -o PDF/$name.pdf Chordpro/$name.chordpro
    fi
done
