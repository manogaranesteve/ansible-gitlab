sudo apt-get install -yqq software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get -y update
sudo apt-get install -yqq ansible

echo "
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA0Xy+5qncvpChjF4fulKyUKYOy2Pr4BAxxlxB8yLgtVh5aVgV
/YIOsQjtGeHWdQPaJgEGuPQuoKsxS+fg0hJyS05cmc2Zatnj4NPSxonDJLB+sw3K
ymmgcEJ8vLnOW/J+KXn4hUnGXu9fFdzP+iwKXusD8CEVXrbBWsXpWjuH+Xkdnlr3
Qg1Qi8vriBEVUogwpBXVuXUQ8IRhBxmXbINdN0Afs7dCSBFhWo0gxetb3sm12vTZ
huYSAZPZtdA9gOZWbVwTmtIqYLOpmhgqYzPINyDV6kiC6IbbZETEiXiZaYwvOTmm
TJP3b1E3iRA5CT3p/Ndw1QRCHwsbQx4mkvHmoQIDAQABAoIBAQCN65QtEqDA3Z0E
SnP2N7YkGwvk0NHo3y/JcZEgVd2kHcdLDej/8M9hMmnm4e/3IF/25TUXsh2wrand
Ab92shaKXBEyBW7NS8Ys93RRGt2Aiq2bQlnDXWHbC8AT31ElS5gbI02xhvSENmjV
l92yX4m7Gj51vQQMQYWmqHPZtID/CcprbgrZmdq1SPUGJrZ4xCEXHHe4bvqCyIsI
oiOebYSLFR7gdREDREdsj4fVBBgxn6D2vUn/Ny/mra0VdvH/AcrD39zGcTWa3PRz
Vw7rO4U4SpWhqkYJ8ZvE62U8hrP9TpOxJ4tqy6aG7eFEQkTa3Jwxhcv/ZxyIpG5+
McvDtSctAoGBAP2Ywv1ElWBiCY6MsXYHvsqoVJ2Onxg7a9oTbOg5YmM+M0Ch4+ni
nxoRIga0IpYkThf8Zlw4asf8vSGooJLqDLQy2lnmBUNfhVPKfTzjVdv5H7+PHWNG
iAf2pABlsfd+ijhDycWUeUZZW/pRYqbUGUimOjrTrHHmcMy4MiFXjgF7AoGBANN4
+Oq61ur+/tn396deDYjn85LtyctUyC+sJ0QPctus5XHEmm7mDZK3l+aMTGaatUK+
Ntf3czpNRbmwLqA3eM7u9tDDJtyRY3pHTtnb8hnRIjxkbdS3Gzxx+Xq2Jjdu8gWg
9ClVOADyI0vFEm1xiEsdRzE8VssM7pvztDN3PxeTAoGBAK/qhmjWaKDBoUuHgZsU
6F8AwiHBy88teTWAAC5fkEaz4S3Wn5mhISkd9XKdBtkMOjgdWIxkfn5YboKozSrc
vQ9Lr3hpPgFsg7qKXrIcKXU8ra9egc5aIQcVKtMzuG6tEwjQzWkIA9CvMETGrB56
R0fEN+SS7a7dYiZBKFVEvTd9AoGAXCjfSeStHvKL/E/9hNoPSffUBddNVyiWqXf8
EMQuyR+bSq5koyntBmCueVHxRdHsZq7g1dPISsM8PMVUPIyQQJaRx78Uo5FU6ghD
i9w3sRqcMfeOieJWo0wEbn8NPqFCJkPTxGOYKYlc6ntzIXEV9a5HxWRHauwy3JIj
mT5Bp7MCgYBmWVzqJIBXgQejqdeqZXuDAbuku9ZffjUhtAFXx2xVNhiMu5GMxLnM
RHiRqihwoAqLGmlydtUDzBG5HTWl9hyK4iMuUjZjVmIAGjOJjrkevnv1gfec+N7C
hg5YnITyT/LRD4JsoNvJSHWkY0xn7vOWgEBC1Wt89XOiIhsgbSvJbw==
-----END RSA PRIVATE KEY-----
" >> /root/.ssh/id_rsa

chmod 600 /root/.ssh/id_rsa

echo "Je suis un fichier initialement present sur le serveur Ansible !!" > /tmp/OriginalFile.txt