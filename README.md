## AWS S3 Presigned URL Example

### CLI

ファイル取得用 URL の発行

```sh
aws s3 presign s3://$S3_BUCKET_NAME/<filename> --expires-in 60
```

ファイルアップロード用の URL の発行は CLI コマンドにはなさそう

```
https://awscli.amazonaws.com/v2/documentation/api/latest/reference/s3/presign.html
```
