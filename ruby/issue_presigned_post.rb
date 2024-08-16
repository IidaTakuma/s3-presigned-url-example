# frozen_string_literal: true

require 'aws-sdk-s3'

# Issue a presigned POST URL for uploading an object to an S3 bucket
def issue_presigned_post(bucket, key, expires_in: 60)
  signer = Aws::S3::Presigner.new
  presigned_url = signer.presigned_url(:put_object, bucket:, key:, expires_in:)
  puts presigned_url
end

if $PROGRAM_NAME == __FILE__
  bucket = ENV.fetch('S3_BUCKET_NAME', nil)
  key = '/images/03.png'
  exit 1 if bucket.nil?

  issue_presigned_post(bucket, key)
end
