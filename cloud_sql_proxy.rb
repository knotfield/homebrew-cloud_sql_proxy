class CloudSqlProxy < Formula
  desc "The Cloud SQL Proxy for GoogleCloudPlatform"
  homepage "https://github.com/GoogleCloudPlatform/cloudsql-proxy"
  version "1.24.0"
  url "https://storage.googleapis.com/cloudsql-proxy/v1.24.0/cloud_sql_proxy.darwin.#{`uname -m`}".strip
  sha256 "e080d3a8d1342176b1afd45c9a898e2b3598e667ff2da6512dbed66da31e1d7a"
  head "https://github.com/GoogleCloudPlatform/cloudsql-proxy.git"
  
  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"cloud_sql_proxy", "./cmd/cloud_sql_proxy"
  end
end
