#!/bin/bash

echo "This is a password generator"

sleep 1s

echo "Enter the password length: "
read length

#openssl: This is the OpenSSL command-line tool, which is used for various cryptographic operations.
#rand: This subcommand of OpenSSL is used for generating random data.
#-base64: This option specifies that the random data should be encoded in Base64 format. Base64 encoding is often used to represent binary data as text, making it more suitable for storage or transmission in text-based contexts.
#48: This argument specifies the number of random bytes to generate. In this case, it generates 48 random bytes.
#cut -c1: This command is used to extract the first character (byte) from each line of text.

openssl rand -base64 48 | cut -c1-$length
