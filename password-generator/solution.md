# Solution:

## Steps to generate a single password

1. Create a file ```single_pass_gen.sh```
```
vi single_pass_gen.sh
```
2. Ask the user to enter the password length
```
echo "Enter the password length"
read length
```
3. Generate random text of 48 bytes and then cut it to the user desired length
```
openssl rand -base64 48 | cut -c1-$length
```
[NOTE]
- openssl: This is the OpenSSL command-line tool, which is used for various cryptographic operations.
- rand: This subcommand of OpenSSL is used for generating random data.
- -base64: This option specifies that the random data should be encoded in Base64 format. Base64 encoding is often used to represent binary data as text, making it more suitable for storage or transmission in text-based contexts.
- 48: This argument specifies the number of random bytes to generate. In this case, it generates 48 random bytes.
- cut -c1: This command is used to extract the first character (byte) from each line of text.

  An example of cut is as follows:
  ```
  echo "Hello" | cut -c1
  ```
  **Output:** H

  ## Steps to generate multiple passwords
  
1. Create a file ```multiple_pass_gen.sh```
```
vi multiple_pass_gen.sh
```
2. Ask the user to enter the password length
```
echo "Enter the password length"
read length
```
3. Ask for the number of passwords to be generated
```
echo "How many password do you want to generate"
read num
```
4. Use a for loop which will run the number of times that the password needs to be generated. Within it, generate random text of 48 bytes and then cut it to the user desired length
```
for p in $(seq 1 $num);
do
openssl rand -base64 48 | cut -c1-$length
done
```
  
