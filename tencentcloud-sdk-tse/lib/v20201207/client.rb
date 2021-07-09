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

require 'json'

module TencentCloud
  module Tse
    module V20201207
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2020-12-07'
            api_endpoint = 'tse.tencentcloudapi.com'
            sdk_version = 'TSE_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 查看配置项

        # @param request: Request instance for DescribeConfig.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeConfigRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeConfigResponse`
        def DescribeConfig(request)
          body = send_request('DescribeConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 查询微服务注册引擎实例访问地址

        # @param request: Request instance for DescribeSREInstanceAccessAddress.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeSREInstanceAccessAddressRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeSREInstanceAccessAddressResponse`
        def DescribeSREInstanceAccessAddress(request)
          body = send_request('DescribeSREInstanceAccessAddress', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSREInstanceAccessAddressResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 用于查询微服务引擎实例列表

        # @param request: Request instance for DescribeSREInstances.
        # @type request: :class:`Tencentcloud::tse::V20201207::DescribeSREInstancesRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::DescribeSREInstancesResponse`
        def DescribeSREInstances(request)
          body = send_request('DescribeSREInstances', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeSREInstancesResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end

        # 管理配置

        # @param request: Request instance for ManageConfig.
        # @type request: :class:`Tencentcloud::tse::V20201207::ManageConfigRequest`
        # @rtype: :class:`Tencentcloud::tse::V20201207::ManageConfigResponse`
        def ManageConfig(request)
          body = send_request('ManageConfig', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = ManageConfigResponse.new
            model.deserialize(response['Response'])
            model
          else
            code = response['Response']['Error']['Code']
            message = response['Response']['Error']['Message']
            reqid = response['Response']['RequestId']
            raise TencentCloud::Common::TencentCloudSDKException.new(code, message, reqid)
          end
        rescue TencentCloud::Common::TencentCloudSDKException => e
          raise e
        rescue StandardError => e
          raise TencentCloud::Common::TencentCloudSDKException.new(nil, e.inspect)
        end


      end
    end
  end
end