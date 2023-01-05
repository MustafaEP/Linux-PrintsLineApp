# Linux-da-stedi-iniz-Sat-r-Arl-klar-n-Ekrana-Yazd-ran-Uygulama

Kodu Anlatan Video : https://youtu.be/GSVb0KcCQ3c

Linux işletim sisteminde seçtiğimiz dosyadaki istediğimiz satır aralıklarındaki bilgileri döndürecek bir uygulama

Öncelikle bu uygulamanın çalışabilmesi için Bilgisayarınızda linux kurulu ve linux sisteminize Zenity GUI'nin kurulu olması gerekmektedir

Alpine Linux:
$ sudo apk add zenity

Arch Linux:
$ sudo pacman -S zenity

Fedora, RHEL, CentOS, Alma Linux and Rocky Linux:
$ sudo dnf install zenity

Debian, Ubuntu, Linux Mint, Pop OS:
$ sudo apt install zenity

openSUSE:
$ sudo zypper install zenity


* Zenity ile kullanıcının anlaması için dialog penceresi oluşturup yapması gerekenleri basitçe anlattıktan sonra kullanıcıdan hangi dosyadaki satır aralığını seçmesi için file selection pencesi oluşturdum ve burdan dönecek dosya konumunu FILE değişkenine atadım.
* Daha sonra kullanıcının önce küçük değeri gireceği şekilde iki tane form pencesi oluşturup burdan dönen değerleri KUCUK ve BUYUK değişkenlerine aktardım.

* KUCUK ve BUYUK değişkenlerini head ve tail komutlarıyla daha kolay bir şekilde kullanabilmek için çıkartma işlemi yapıp FARK değişkenine atadım

Daha sonra head ve tail komutlarını kullanarak kullanıcının istediğiaralıkta satırları CEVAP değişkenine atadık ve info penceresiyle aldığımız değerleri kullanıcıya aktardık
