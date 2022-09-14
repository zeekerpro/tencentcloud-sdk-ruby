# frozen_string_literal: true

# Copyright (c) 2017-2018 THL A29 Limited, a Tencent company. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

Gem::Specification.new do |spec|
  spec.name          = 'tencentcloud-sdk'
  spec.version       = File.read(File.expand_path('lib/VERSION', __dir__)).strip
  spec.summary       = 'Tencent Cloud SDK for Ruby'
  spec.description   = 'Tencent Cloud Ruby SDK is the official software development kit, which allows Ruby developers to write software that makes use of Tencent Cloud service.'
  spec.author        = 'Tencent Cloud'
  spec.homepage      = 'https://github.com/TencentCloud/tencentcloud-sdk-ruby'
  spec.license       = 'Apache-2.0'
  spec.email         = ['tencentcloudapi@tencent.com']
  spec.require_paths = ['lib']
  spec.files         = Dir['lib/**/*.rb', 'lib/VERSION']

  spec.add_dependency('tencentcloud-sdk-nlp', spec.version)
  spec.add_dependency('tencentcloud-sdk-iai', spec.version)
  spec.add_dependency('tencentcloud-sdk-iotcloud', spec.version)
  spec.add_dependency('tencentcloud-sdk-rp', spec.version)
  spec.add_dependency('tencentcloud-sdk-tiw', spec.version)
  spec.add_dependency('tencentcloud-sdk-mps', spec.version)
  spec.add_dependency('tencentcloud-sdk-ft', spec.version)
  spec.add_dependency('tencentcloud-sdk-youmall', spec.version)
  spec.add_dependency('tencentcloud-sdk-vod', spec.version)
  spec.add_dependency('tencentcloud-sdk-aai', spec.version)
  spec.add_dependency('tencentcloud-sdk-ssl', spec.version)
  spec.add_dependency('tencentcloud-sdk-cme', spec.version)
  spec.add_dependency('tencentcloud-sdk-tbm', spec.version)
  spec.add_dependency('tencentcloud-sdk-bri', spec.version)
  spec.add_dependency('tencentcloud-sdk-ame', spec.version)
  spec.add_dependency('tencentcloud-sdk-cis', spec.version)
  spec.add_dependency('tencentcloud-sdk-smpn', spec.version)
  spec.add_dependency('tencentcloud-sdk-kms', spec.version)
  spec.add_dependency('tencentcloud-sdk-cpdp', spec.version)
  spec.add_dependency('tencentcloud-sdk-cat', spec.version)
  spec.add_dependency('tencentcloud-sdk-as', spec.version)
  spec.add_dependency('tencentcloud-sdk-aa', spec.version)
  spec.add_dependency('tencentcloud-sdk-mvj', spec.version)
  spec.add_dependency('tencentcloud-sdk-ocr', spec.version)
  spec.add_dependency('tencentcloud-sdk-cim', spec.version)
  spec.add_dependency('tencentcloud-sdk-ssm', spec.version)
  spec.add_dependency('tencentcloud-sdk-dc', spec.version)
  spec.add_dependency('tencentcloud-sdk-partners', spec.version)
  spec.add_dependency('tencentcloud-sdk-mongodb', spec.version)
  spec.add_dependency('tencentcloud-sdk-fmu', spec.version)
  spec.add_dependency('tencentcloud-sdk-cds', spec.version)
  spec.add_dependency('tencentcloud-sdk-iotexplorer', spec.version)
  spec.add_dependency('tencentcloud-sdk-tcaplusdb', spec.version)
  spec.add_dependency('tencentcloud-sdk-dcdb', spec.version)
  spec.add_dependency('tencentcloud-sdk-batch', spec.version)
  spec.add_dependency('tencentcloud-sdk-apigateway', spec.version)
  spec.add_dependency('tencentcloud-sdk-yunsou', spec.version)
  spec.add_dependency('tencentcloud-sdk-soe', spec.version)
  spec.add_dependency('tencentcloud-sdk-tcr', spec.version)
  spec.add_dependency('tencentcloud-sdk-tics', spec.version)
  spec.add_dependency('tencentcloud-sdk-postgres', spec.version)
  spec.add_dependency('tencentcloud-sdk-gme', spec.version)
  spec.add_dependency('tencentcloud-sdk-tbaas', spec.version)
  spec.add_dependency('tencentcloud-sdk-drm', spec.version)
  spec.add_dependency('tencentcloud-sdk-bizlive', spec.version)
  spec.add_dependency('tencentcloud-sdk-cdn', spec.version)
  spec.add_dependency('tencentcloud-sdk-asr', spec.version)
  spec.add_dependency('tencentcloud-sdk-solar', spec.version)
  spec.add_dependency('tencentcloud-sdk-tiems', spec.version)
  spec.add_dependency('tencentcloud-sdk-afc', spec.version)
  spec.add_dependency('tencentcloud-sdk-iot', spec.version)
  spec.add_dependency('tencentcloud-sdk-tione', spec.version)
  spec.add_dependency('tencentcloud-sdk-tsf', spec.version)
  spec.add_dependency('tencentcloud-sdk-cbs', spec.version)
  spec.add_dependency('tencentcloud-sdk-yunjing', spec.version)
  spec.add_dependency('tencentcloud-sdk-sms', spec.version)
  spec.add_dependency('tencentcloud-sdk-bda', spec.version)
  spec.add_dependency('tencentcloud-sdk-billing', spec.version)
  spec.add_dependency('tencentcloud-sdk-ie', spec.version)
  spec.add_dependency('tencentcloud-sdk-ecdn', spec.version)
  spec.add_dependency('tencentcloud-sdk-tmt', spec.version)
  spec.add_dependency('tencentcloud-sdk-ticm', spec.version)
  spec.add_dependency('tencentcloud-sdk-wss', spec.version)
  spec.add_dependency('tencentcloud-sdk-bmvpc', spec.version)
  spec.add_dependency('tencentcloud-sdk-trtc', spec.version)
  spec.add_dependency('tencentcloud-sdk-dbbrain', spec.version)
  spec.add_dependency('tencentcloud-sdk-iir', spec.version)
  spec.add_dependency('tencentcloud-sdk-gs', spec.version)
  spec.add_dependency('tencentcloud-sdk-tci', spec.version)
  spec.add_dependency('tencentcloud-sdk-taf', spec.version)
  spec.add_dependency('tencentcloud-sdk-es', spec.version)
  spec.add_dependency('tencentcloud-sdk-bm', spec.version)
  spec.add_dependency('tencentcloud-sdk-cms', spec.version)
  spec.add_dependency('tencentcloud-sdk-npp', spec.version)
  spec.add_dependency('tencentcloud-sdk-mariadb', spec.version)
  spec.add_dependency('tencentcloud-sdk-ds', spec.version)
  spec.add_dependency('tencentcloud-sdk-chdfs', spec.version)
  spec.add_dependency('tencentcloud-sdk-cmq', spec.version)
  spec.add_dependency('tencentcloud-sdk-tcb', spec.version)
  spec.add_dependency('tencentcloud-sdk-captcha', spec.version)
  spec.add_dependency('tencentcloud-sdk-memcached', spec.version)
  spec.add_dependency('tencentcloud-sdk-ms', spec.version)
  spec.add_dependency('tencentcloud-sdk-tia', spec.version)
  spec.add_dependency('tencentcloud-sdk-sqlserver', spec.version)
  spec.add_dependency('tencentcloud-sdk-domain', spec.version)
  spec.add_dependency('tencentcloud-sdk-redis', spec.version)
  spec.add_dependency('tencentcloud-sdk-dts', spec.version)
  spec.add_dependency('tencentcloud-sdk-lp', spec.version)
  spec.add_dependency('tencentcloud-sdk-tkgdq', spec.version)
  spec.add_dependency('tencentcloud-sdk-cam', spec.version)
  spec.add_dependency('tencentcloud-sdk-ecm', spec.version)
  spec.add_dependency('tencentcloud-sdk-sts', spec.version)
  spec.add_dependency('tencentcloud-sdk-msp', spec.version)
  spec.add_dependency('tencentcloud-sdk-tke', spec.version)
  spec.add_dependency('tencentcloud-sdk-facefusion', spec.version)
  spec.add_dependency('tencentcloud-sdk-habo', spec.version)
  spec.add_dependency('tencentcloud-sdk-bmeip', spec.version)
  spec.add_dependency('tencentcloud-sdk-tdmq', spec.version)
  spec.add_dependency('tencentcloud-sdk-iottid', spec.version)
  spec.add_dependency('tencentcloud-sdk-dayu', spec.version)
  spec.add_dependency('tencentcloud-sdk-cvm', spec.version)
  spec.add_dependency('tencentcloud-sdk-cloudaudit', spec.version)
  spec.add_dependency('tencentcloud-sdk-gaap', spec.version)
  spec.add_dependency('tencentcloud-sdk-tbp', spec.version)
  spec.add_dependency('tencentcloud-sdk-tav', spec.version)
  spec.add_dependency('tencentcloud-sdk-gse', spec.version)
  spec.add_dependency('tencentcloud-sdk-live', spec.version)
  spec.add_dependency('tencentcloud-sdk-cfs', spec.version)
  spec.add_dependency('tencentcloud-sdk-cr', spec.version)
  spec.add_dependency('tencentcloud-sdk-af', spec.version)
  spec.add_dependency('tencentcloud-sdk-iotvideo', spec.version)
  spec.add_dependency('tencentcloud-sdk-ic', spec.version)
  spec.add_dependency('tencentcloud-sdk-tts', spec.version)
  spec.add_dependency('tencentcloud-sdk-scf', spec.version)
  spec.add_dependency('tencentcloud-sdk-ckafka', spec.version)
  spec.add_dependency('tencentcloud-sdk-tag', spec.version)
  spec.add_dependency('tencentcloud-sdk-ecc', spec.version)
  spec.add_dependency('tencentcloud-sdk-hcm', spec.version)
  spec.add_dependency('tencentcloud-sdk-monitor', spec.version)
  spec.add_dependency('tencentcloud-sdk-faceid', spec.version)
  spec.add_dependency('tencentcloud-sdk-vpc', spec.version)
  spec.add_dependency('tencentcloud-sdk-emr', spec.version)
  spec.add_dependency('tencentcloud-sdk-tiia', spec.version)
  spec.add_dependency('tencentcloud-sdk-clb', spec.version)
  spec.add_dependency('tencentcloud-sdk-bmlb', spec.version)
  spec.add_dependency('tencentcloud-sdk-cdb', spec.version)
  spec.add_dependency('tencentcloud-sdk-organization', spec.version)
  spec.add_dependency('tencentcloud-sdk-cloudhsm', spec.version)
  spec.add_dependency('tencentcloud-sdk-cws', spec.version)

  spec.metadata = {
    'source_code_uri' => 'https://github.com/TencentCloud/tencentcloud-sdk-ruby/tencentcloud-sdk',
    'changelog_uri' => 'https://github.com/TencentCloud/tencentcloud-sdk-ruby/blob/master/CHANGELOG.md'
  }
end
