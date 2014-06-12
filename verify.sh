
if [ "$#" -ne 1 ]; then
    echo "Usage: sh verify.sh URN"
    exit
fi


echo "Verifying from configuration in /vagrant/hmt-iliad11/vm-mom-config.gradle verify"


cd /vagrant/hmt-mom

echo "Cleaning previous HMT MOM results..."
gradle clean

echo Beginning verification for folio $1

gradle -Pfolio=$1 -Pconf=/vagrant/hmt-iliad11/vm-mom-config.gradle verify
