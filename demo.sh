#!/bin/sh

sankhyani=(\
"०" "१" "२" "३" "४" "५" "६" "७" "८" "९" \
)

swarani=(\
"अ" "आ" "इ" "ई" "उ" "ऊ" "ॠ" "ऌ" "ऎ" "ए" "ऐ" "ऒ" "ओ" "औ" "अं" "अः" \
)

vyanjanani=(\
"क" "ख" "ग" "घ" "ङ" \
"च" "छ" "ज" "झ" "ञ" \
"ट" "ठ" "ड" "ढ" "ण" \
"त" "थ" "द" "ध" "न" \
"प" "फ" "ब" "भ" "म" \
"य" "र" "ल" "व" "श" "ष" "स" "ह" "ळ" \
)

aama_vyanjanani=$(\
for aksharani in ${vyanjanani[@]} ; do printf '"%s्" ' "${aksharani}" ; done \
)

gunitani=(\
"ा" "ि" "ी" "ु" "ू" "ॄ" "ॢ" "ॆ" "े" "ै" "ॊ" "ो" "ौ" "ं" "ः" \
)

i=-1

for letters in \
${sankhyani[@]} \
${swarani[@]} \
${vyanjanani[@]} \
${gunitani[@]} \

do
    i=$(( $i+1 )) ; printf '#define %s %s\n' "$letters" "$i"
done

for aksharani in \
${gunitani[@]} \

do
    for Swarani in \
    ${vyanjanani[@]} \

    do
        printf '%s + %s = %s%s\n' "$Swarani" "$aksharani" "$Swarani" "$aksharani"
    done
done

echo ${sanyuktani[@]}
