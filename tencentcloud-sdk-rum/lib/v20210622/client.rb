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
  module Rum
    module V20210622
      class Client < TencentCloud::Common::AbstractClient

        def initialize(credential, region, profile = nil)
            api_version = '2021-06-22'
            api_endpoint = 'rum.tencentcloudapi.com'
            sdk_version = 'RUM_' + File.read(File.expand_path('../VERSION', __dir__)).strip
            super(credential, region, api_version, api_endpoint, sdk_version, profile)
        end


        # 创建项目（归属于某个团队）

        # @param request: Request instance for CreateProject.
        # @type request: :class:`Tencentcloud::rum::V20210622::CreateProjectRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::CreateProjectResponse`
        def CreateProject(request)
          body = send_request('CreateProject', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = CreateProjectResponse.new
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

        # 获取DescribeDataEventUrl信息

        # @param request: Request instance for DescribeDataEventUrl.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataEventUrlRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataEventUrlResponse`
        def DescribeDataEventUrl(request)
          body = send_request('DescribeDataEventUrl', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataEventUrlResponse.new
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

        # 获取LogUrlStatistics信息

        # @param request: Request instance for DescribeDataLogUrlStatistics.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataLogUrlStatisticsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataLogUrlStatisticsResponse`
        def DescribeDataLogUrlStatistics(request)
          body = send_request('DescribeDataLogUrlStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataLogUrlStatisticsResponse.new
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

        # 获取PerformancePage信息

        # @param request: Request instance for DescribeDataPerformancePage.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataPerformancePageRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataPerformancePageResponse`
        def DescribeDataPerformancePage(request)
          body = send_request('DescribeDataPerformancePage', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataPerformancePageResponse.new
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

        # 获取DescribeDataPvUrlStatistics信息

        # @param request: Request instance for DescribeDataPvUrlStatistics.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeDataPvUrlStatisticsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeDataPvUrlStatisticsResponse`
        def DescribeDataPvUrlStatistics(request)
          body = send_request('DescribeDataPvUrlStatistics', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeDataPvUrlStatisticsResponse.new
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

        # 获取首页错误信息

        # @param request: Request instance for DescribeError.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeErrorRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeErrorResponse`
        def DescribeError(request)
          body = send_request('DescribeError', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeErrorResponse.new
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

        # 获取项目下的日志列表（实例创建的项目下的日志列表）

        # @param request: Request instance for DescribeLogList.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeLogListRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeLogListResponse`
        def DescribeLogList(request)
          body = send_request('DescribeLogList', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeLogListResponse.new
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

        # 获取项目列表（实例创建的团队下的项目列表）

        # @param request: Request instance for DescribeProjects.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeProjectsRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeProjectsResponse`
        def DescribeProjects(request)
          body = send_request('DescribeProjects', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeProjectsResponse.new
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

        # 获取首页分数列表

        # @param request: Request instance for DescribeScores.
        # @type request: :class:`Tencentcloud::rum::V20210622::DescribeScoresRequest`
        # @rtype: :class:`Tencentcloud::rum::V20210622::DescribeScoresResponse`
        def DescribeScores(request)
          body = send_request('DescribeScores', request.serialize)
          response = JSON.parse(body)
          if response['Response'].key?('Error') == false
            model = DescribeScoresResponse.new
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