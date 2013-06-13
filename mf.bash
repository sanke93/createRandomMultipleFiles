echo "Enter number of files to be created";
read num;
echo "Enter the file format required";
read format;
echo "Enter the file size for each file (in Bytes)";
read size;
for ((i=1;i<=$num;i++))
do dd if=/dev/urandom bs=1 count=$size of=file$i.$format;
done;

