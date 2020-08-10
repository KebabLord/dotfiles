#!/bin/bash
# Extracts bc.png images to different folders for random theme selecting purposes.
i=1
for b in `find -name "bc*.png"`
do
 mkdir ../ascii_moe${i}
 cp slim.theme panel.png ../ascii_moe${i}
 cp $b ../ascii_moe${i}/background.png
 ((i=i+1))
done

echo "done."
eval echo ascii_moe`echo {1..$i}` | sed "s/ /,/g"
