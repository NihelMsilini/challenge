o -n "add a user "
read UserPG
echo -n "Mot de passe : "
read PG_PASSWORD
csv_DirectoryLocation=$(pwd)


for ligne in `cat $csv_location`
do
    echo $ligne
    code_tiers_csv=`echo $ligne | awk -F":" '{ print $1 }'`
    echo "code_tiers_csv = $code_tiers_csv"
    libelle_groupe_csv=`echo $ligne | awk -F":" '{ print $2 }'`
    echo "libelle_groupe_csv = $libelle_groupe_csv"
done
psql lorrainng_db -U $UserPG << EOF

