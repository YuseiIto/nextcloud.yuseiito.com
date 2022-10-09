# nextcloud.yuseiito.com

My nextcloud based private cloud configuration.

## Installation


(0. *It's Optional but expected to * mount some external storage like:)

```zsh
mount -t cifs -o username={PUT_YOUR_USERNAME_HERE},password={PUT_YOUR_PASSWORD_HERE} //{CIFS_HOST}/{CIFS_SHARE} /data
```

Otherwise, the `/data` directory will be used to store the actual data.

1. Run

```zsh
git clone git@github.com:YuseiIto/nextcloud.yuseiito.com.git
cd nextcloud.yuseiito.com
cp .env.template .env
```

2. Update passwords `.env` file
3. Start containers

```zsh
docker-compose up -d
```

4. Configure some configurations by runnning

```zsh
sh ./configure.sh
````

5. Configure cron process

```zsh
crontab -e # Insert `*/5 * * * * /usr/bin/docker exec --user www-data negicloud-infra-app-1 php cron.php` 
```

6. Configure Email (Uses sendgrid)

- Transmission mode: SMTP
- Encryption: STARTTLS
- Source address: some_username@yuseiito.com
- Authentication method: Login
- Require authentication: checked
- Server address: smtp.sendgrid.net:587
- Credentials: apikey / {取得したAPIキー}

## Internet access
- This repository content does not provide global access from the internet.
- Use some tunnel or VPN.
  - Cloudflared, ngrok etc...
