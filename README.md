## AWS S3 Presigned URL Example

### ファイル取得

```sh
aws s3 presign s3://$S3_BUCKET_NAME/<filename> --expires-in 60
```

```ruby
def issue_presigned_url(bucket, key, expires_in: 60)
  signer = Aws::S3::Presigner.new
  url = signer.presigned_url(:get_object, bucket:, key:, expires_in:)
end
```

### ファイルアップロード

URL 取得

```ruby
def issue_presigned_post(bucket, key, expires_in: 60)
  signer = Aws::S3::Presigner.new
  url = signer.presigned_url(:put_object, bucket:, key:, expires_in:)
end
```

アップロード

```sh
curl -X PUT --upload-file <filepath> 'アップロード用URL'
```

### 参考

- https://docs.aws.amazon.com/ja_jp/AmazonS3/latest/userguide/ShareObjectPreSignedURL.html
- https://docs.aws.amazon.com/ja_jp/AmazonS3/latest/userguide/PresignedUrlUploadObject.html
- https://awscli.amazonaws.com/v2/documentation/api/latest/index.html
  - https://awscli.amazonaws.com/v2/documentation/api/latest/reference/as3/presign.html
- https://github.com/aws/aws-sdk-ruby
