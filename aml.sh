[ ! "$MODPATH" ] && MODPATH=${0%/*}

# destination
MODAPS=`find $MODPATH -type f -name *policy*.conf -o -name *policy*.xml`

# patch audio policy
for MODAP in $MODAPS; do
  sed -i 's|COMPRESS_OFFLOAD|NONE|g' $MODAP
  sed -i 's|,compressed_offload||g' $MODAP
#u  sed -i 's|RAW|NONE|g' $MODAP
#u  sed -i 's|,raw||g' $MODAP
done


