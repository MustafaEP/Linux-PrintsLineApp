!/bin/bash

zenity --info \
       --title "Info Message" \
       --width 500 \
       --height 100 \
       --text "Bir Dosya Seçin ve o dosyada hangi satırlar arasını ekranda göstermek için istediğiniz saır aralıklarını giriniz. Lütfen sadece sayı giriniz."
#Info Message

FILE=`zenity --file-selection --title="İstediğiniz Satırları Listelemek için Dosya Seçiniz"`
echo "\"$FILE\" seçildi."


#Satır sayısını döndürüyor

KUCUK=$(zenity --forms \
       --text "Hoşgeldiniz" \
       --add-entry "Küçük Değeri Giriniz" )
#Küçük index

BUYUK=$(zenity --forms \
       --text "Hoşgeldiniz" \
       --add-entry "Büyük Değeri Giriniz" )
#Büyük index

FARK=`expr $BUYUK - $KUCUK`
echo "$FARK"
#Fark

echo "$KUCUK - $BUYUK"


CEVAP=$(tail -n +$KUCUK $FILE | head -n $FARK)
#Yazdırılacak değer CEVAP'a kaydedildi

echo "$CEVAP"
#CEVAP konsola yazdırıldı

zenity --info \
       --title "$KUCUK. Satır ile $BUYUK. Satır Arası" \
       --width 500 \
       --text "$CEVAP"
#GUI' ye yazdırıldı