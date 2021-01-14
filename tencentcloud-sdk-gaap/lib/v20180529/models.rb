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

module TencentCloud
  module Gaap
    module V20180529
      # 通道组加速地域列表，包括加速地域，以及该加速地域对应的带宽和并发配置。
      class AccessConfiguration < TencentCloud::Common::AbstractModel
        # @param AccessRegion: 加速地域。
        # @type AccessRegion: String
        # @param Bandwidth: 通道带宽上限，单位：Mbps。
        # @type Bandwidth: Integer
        # @param Concurrent: 通道并发量上限，表示同时在线的连接数，单位：万。
        # @type Concurrent: Integer

        attr_accessor :AccessRegion, :Bandwidth, :Concurrent
        
        def initialize(accessregion=nil, bandwidth=nil, concurrent=nil)
          @AccessRegion = accessregion
          @Bandwidth = bandwidth
          @Concurrent = concurrent
        end

        def deserialize(params)
          @AccessRegion = params['AccessRegion']
          @Bandwidth = params['Bandwidth']
          @Concurrent = params['Concurrent']
        end
      end

      # 根据源站查询的可用加速区域信息及对应的可选带宽和并发量
      class AccessRegionDetial < TencentCloud::Common::AbstractModel
        # @param RegionId: 区域ID
        # @type RegionId: String
        # @param RegionName: 区域的中文或英文名称
        # @type RegionName: String
        # @param ConcurrentList: 可选的并发量取值数组
        # @type ConcurrentList: Array
        # @param BandwidthList: 可选的带宽取值数组
        # @type BandwidthList: Array

        attr_accessor :RegionId, :RegionName, :ConcurrentList, :BandwidthList
        
        def initialize(regionid=nil, regionname=nil, concurrentlist=nil, bandwidthlist=nil)
          @RegionId = regionid
          @RegionName = regionname
          @ConcurrentList = concurrentlist
          @BandwidthList = bandwidthlist
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
          @ConcurrentList = params['ConcurrentList']
          @BandwidthList = params['BandwidthList']
        end
      end

      # 域名就近接入配置
      class AccessRegionDomainConf < TencentCloud::Common::AbstractModel
        # @param RegionId: 地域ID。
        # @type RegionId: String
        # @param NationCountryInnerList: 就近接入区域国家内部编码，编码列表可通过DescribeCountryAreaMapping接口获取。
        # @type NationCountryInnerList: Array

        attr_accessor :RegionId, :NationCountryInnerList
        
        def initialize(regionid=nil, nationcountryinnerlist=nil)
          @RegionId = regionid
          @NationCountryInnerList = nationcountryinnerlist
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @NationCountryInnerList = params['NationCountryInnerList']
        end
      end

      # AddRealServers请求参数结构体
      class AddRealServersRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 源站对应的项目ID
        # @type ProjectId: Integer
        # @param RealServerIP: 源站对应的IP或域名
        # @type RealServerIP: Array
        # @param RealServerName: 源站名称
        # @type RealServerName: String
        # @param TagSet: 标签列表
        # @type TagSet: Array

        attr_accessor :ProjectId, :RealServerIP, :RealServerName, :TagSet
        
        def initialize(projectid=nil, realserverip=nil, realservername=nil, tagset=nil)
          @ProjectId = projectid
          @RealServerIP = realserverip
          @RealServerName = realservername
          @TagSet = tagset
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @RealServerIP = params['RealServerIP']
          @RealServerName = params['RealServerName']
          @TagSet = params['TagSet']
        end
      end

      # AddRealServers返回参数结构体
      class AddRealServersResponse < TencentCloud::Common::AbstractModel
        # @param RealServerSet: 源站信息列表
        # @type RealServerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RealServerSet, :RequestId
        
        def initialize(realserverset=nil, requestid=nil)
          @RealServerSet = realserverset
          @RequestId = requestid
        end

        def deserialize(params)
          @RealServerSet = params['RealServerSet']
          @RequestId = params['RequestId']
        end
      end

      # 带宽梯度价格
      class BandwidthPriceGradient < TencentCloud::Common::AbstractModel
        # @param BandwidthRange: 带宽范围。
        # @type BandwidthRange: Array
        # @param BandwidthUnitPrice: 在对应带宽范围内的单宽单价，单位：元/Mbps/天。
        # @type BandwidthUnitPrice: Float
        # @param DiscountBandwidthUnitPrice: 带宽折扣价，单位：元/Mbps/天。
        # @type DiscountBandwidthUnitPrice: Float

        attr_accessor :BandwidthRange, :BandwidthUnitPrice, :DiscountBandwidthUnitPrice
        
        def initialize(bandwidthrange=nil, bandwidthunitprice=nil, discountbandwidthunitprice=nil)
          @BandwidthRange = bandwidthrange
          @BandwidthUnitPrice = bandwidthunitprice
          @DiscountBandwidthUnitPrice = discountbandwidthunitprice
        end

        def deserialize(params)
          @BandwidthRange = params['BandwidthRange']
          @BandwidthUnitPrice = params['BandwidthUnitPrice']
          @DiscountBandwidthUnitPrice = params['DiscountBandwidthUnitPrice']
        end
      end

      # BindListenerRealServers请求参数结构体
      class BindListenerRealServersRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param RealServerBindSet: 待绑定源站列表。如果该监听器的源站调度策略是加权轮询，需要填写源站权重 RealServerWeight, 不填或者其他调度类型默认源站权重为1。
        # @type RealServerBindSet: Array

        attr_accessor :ListenerId, :RealServerBindSet
        
        def initialize(listenerid=nil, realserverbindset=nil)
          @ListenerId = listenerid
          @RealServerBindSet = realserverbindset
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @RealServerBindSet = params['RealServerBindSet']
        end
      end

      # BindListenerRealServers返回参数结构体
      class BindListenerRealServersResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 已绑定的源站信息
      class BindRealServer < TencentCloud::Common::AbstractModel
        # @param RealServerId: 源站ID
        # @type RealServerId: String
        # @param RealServerIP: 源站IP或者域名
        # @type RealServerIP: String
        # @param RealServerWeight: 该源站所占权重
        # @type RealServerWeight: Integer
        # @param RealServerStatus: 源站健康检查状态，其中：
        # 0表示正常；
        # 1表示异常。
        # 未开启健康检查状态时，该状态始终为正常。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealServerStatus: Integer
        # @param RealServerPort: 源站的端口号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealServerPort: Integer
        # @param DownIPList: 当源站为域名时，域名被解析成一个或者多个IP，该字段表示其中异常的IP列表。状态异常，但该字段为空时，表示域名解析异常。
        # @type DownIPList: Array

        attr_accessor :RealServerId, :RealServerIP, :RealServerWeight, :RealServerStatus, :RealServerPort, :DownIPList
        
        def initialize(realserverid=nil, realserverip=nil, realserverweight=nil, realserverstatus=nil, realserverport=nil, downiplist=nil)
          @RealServerId = realserverid
          @RealServerIP = realserverip
          @RealServerWeight = realserverweight
          @RealServerStatus = realserverstatus
          @RealServerPort = realserverport
          @DownIPList = downiplist
        end

        def deserialize(params)
          @RealServerId = params['RealServerId']
          @RealServerIP = params['RealServerIP']
          @RealServerWeight = params['RealServerWeight']
          @RealServerStatus = params['RealServerStatus']
          @RealServerPort = params['RealServerPort']
          @DownIPList = params['DownIPList']
        end
      end

      # 添加源站的源站信息返回值
      class BindRealServerInfo < TencentCloud::Common::AbstractModel
        # @param RealServerIP: 源站的IP或域名
        # @type RealServerIP: String
        # @param RealServerId: 源站ID
        # @type RealServerId: String
        # @param RealServerName: 源站名称
        # @type RealServerName: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param TagSet: 标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSet: Array

        attr_accessor :RealServerIP, :RealServerId, :RealServerName, :ProjectId, :TagSet
        
        def initialize(realserverip=nil, realserverid=nil, realservername=nil, projectid=nil, tagset=nil)
          @RealServerIP = realserverip
          @RealServerId = realserverid
          @RealServerName = realservername
          @ProjectId = projectid
          @TagSet = tagset
        end

        def deserialize(params)
          @RealServerIP = params['RealServerIP']
          @RealServerId = params['RealServerId']
          @RealServerName = params['RealServerName']
          @ProjectId = params['ProjectId']
          @TagSet = params['TagSet']
        end
      end

      # BindRuleRealServers请求参数结构体
      class BindRuleRealServersRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 转发规则ID
        # @type RuleId: String
        # @param RealServerBindSet: 需要绑定的源站信息列表。
        # 如果已经存在绑定的源站，则会覆盖更新成这个源站列表。
        # 当不带该字段时，表示解绑该规则上的所有源站。
        # 如果该规则的源站调度策略是加权轮询，需要填写源站权重 RealServerWeight, 不填或者其他调度类型默认源站权重为1。
        # @type RealServerBindSet: Array

        attr_accessor :RuleId, :RealServerBindSet
        
        def initialize(ruleid=nil, realserverbindset=nil)
          @RuleId = ruleid
          @RealServerBindSet = realserverbindset
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RealServerBindSet = params['RealServerBindSet']
        end
      end

      # BindRuleRealServers返回参数结构体
      class BindRuleRealServersResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 服务器证书
      class Certificate < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书ID
        # @type CertificateId: String
        # @param CertificateName: 证书名称（旧参数，请使用CertificateAlias）。
        # @type CertificateName: String
        # @param CertificateType: 证书类型。
        # @type CertificateType: Integer
        # @param CertificateAlias: 证书名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateAlias: String
        # @param CreateTime: 证书创建时间，采用Unix时间戳的方式，表示从1970年1月1日（UTC/GMT的午夜）开始所经过的秒数。
        # @type CreateTime: Integer
        # @param BeginTime: 证书生效起始时间，采用Unix时间戳的方式，表示从1970年1月1日（UTC/GMT的午夜）开始所经过的秒数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginTime: Integer
        # @param EndTime: 证书过期时间，采用Unix时间戳的方式，表示从1970年1月1日（UTC/GMT的午夜）开始所经过的秒数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: Integer
        # @param IssuerCN: 证书签发者通用名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IssuerCN: String
        # @param SubjectCN: 证书主题通用名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubjectCN: String

        attr_accessor :CertificateId, :CertificateName, :CertificateType, :CertificateAlias, :CreateTime, :BeginTime, :EndTime, :IssuerCN, :SubjectCN
        
        def initialize(certificateid=nil, certificatename=nil, certificatetype=nil, certificatealias=nil, createtime=nil, begintime=nil, endtime=nil, issuercn=nil, subjectcn=nil)
          @CertificateId = certificateid
          @CertificateName = certificatename
          @CertificateType = certificatetype
          @CertificateAlias = certificatealias
          @CreateTime = createtime
          @BeginTime = begintime
          @EndTime = endtime
          @IssuerCN = issuercn
          @SubjectCN = subjectcn
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @CertificateName = params['CertificateName']
          @CertificateType = params['CertificateType']
          @CertificateAlias = params['CertificateAlias']
          @CreateTime = params['CreateTime']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @IssuerCN = params['IssuerCN']
          @SubjectCN = params['SubjectCN']
        end
      end

      # 证书别名信息
      class CertificateAliasInfo < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书ID
        # @type CertificateId: String
        # @param CertificateAlias: 证书别名
        # @type CertificateAlias: String

        attr_accessor :CertificateId, :CertificateAlias
        
        def initialize(certificateid=nil, certificatealias=nil)
          @CertificateId = certificateid
          @CertificateAlias = certificatealias
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @CertificateAlias = params['CertificateAlias']
        end
      end

      # 证书详情，包括证书ID， 证书名字，证书类型，证书内容以及密钥内容。
      class CertificateDetail < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书ID。
        # @type CertificateId: String
        # @param CertificateType: 证书类型。
        # @type CertificateType: Integer
        # @param CertificateAlias: 证书名字。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateAlias: String
        # @param CertificateContent: 证书内容。
        # @type CertificateContent: String
        # @param CertificateKey: 密钥内容。仅当证书类型为SSL证书时，返回该字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateKey: String
        # @param CreateTime: 创建时间，采用Unix时间戳的方式，表示从1970年1月1日（UTC/GMT的午夜）开始所经过的秒数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param BeginTime: 证书生效起始时间，采用Unix时间戳的方式，表示从1970年1月1日（UTC/GMT的午夜）开始所经过的秒数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BeginTime: Integer
        # @param EndTime: 证书过期时间，采用Unix时间戳的方式，表示从1970年1月1日（UTC/GMT的午夜）开始所经过的秒数。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type EndTime: Integer
        # @param IssuerCN: 证书签发者通用名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type IssuerCN: String
        # @param SubjectCN: 证书主题通用名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubjectCN: String

        attr_accessor :CertificateId, :CertificateType, :CertificateAlias, :CertificateContent, :CertificateKey, :CreateTime, :BeginTime, :EndTime, :IssuerCN, :SubjectCN
        
        def initialize(certificateid=nil, certificatetype=nil, certificatealias=nil, certificatecontent=nil, certificatekey=nil, createtime=nil, begintime=nil, endtime=nil, issuercn=nil, subjectcn=nil)
          @CertificateId = certificateid
          @CertificateType = certificatetype
          @CertificateAlias = certificatealias
          @CertificateContent = certificatecontent
          @CertificateKey = certificatekey
          @CreateTime = createtime
          @BeginTime = begintime
          @EndTime = endtime
          @IssuerCN = issuercn
          @SubjectCN = subjectcn
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @CertificateType = params['CertificateType']
          @CertificateAlias = params['CertificateAlias']
          @CertificateContent = params['CertificateContent']
          @CertificateKey = params['CertificateKey']
          @CreateTime = params['CreateTime']
          @BeginTime = params['BeginTime']
          @EndTime = params['EndTime']
          @IssuerCN = params['IssuerCN']
          @SubjectCN = params['SubjectCN']
        end
      end

      # CheckProxyCreate请求参数结构体
      class CheckProxyCreateRequest < TencentCloud::Common::AbstractModel
        # @param AccessRegion: 通道的接入(加速)区域。取值可通过接口DescribeAccessRegionsByDestRegion获取到
        # @type AccessRegion: String
        # @param RealServerRegion: 通道的源站区域。取值可通过接口DescribeDestRegions获取到
        # @type RealServerRegion: String
        # @param Bandwidth: 通道带宽上限，单位：Mbps。
        # @type Bandwidth: Integer
        # @param Concurrent: 通道并发量上限，表示同时在线的连接数，单位：万。
        # @type Concurrent: Integer
        # @param GroupId: 如果在通道组下创建通道，需要填写通道组的ID
        # @type GroupId: String

        attr_accessor :AccessRegion, :RealServerRegion, :Bandwidth, :Concurrent, :GroupId
        
        def initialize(accessregion=nil, realserverregion=nil, bandwidth=nil, concurrent=nil, groupid=nil)
          @AccessRegion = accessregion
          @RealServerRegion = realserverregion
          @Bandwidth = bandwidth
          @Concurrent = concurrent
          @GroupId = groupid
        end

        def deserialize(params)
          @AccessRegion = params['AccessRegion']
          @RealServerRegion = params['RealServerRegion']
          @Bandwidth = params['Bandwidth']
          @Concurrent = params['Concurrent']
          @GroupId = params['GroupId']
        end
      end

      # CheckProxyCreate返回参数结构体
      class CheckProxyCreateResponse < TencentCloud::Common::AbstractModel
        # @param CheckFlag: 查询能否创建给定配置的通道，1可以创建，0不可创建。
        # @type CheckFlag: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CheckFlag, :RequestId
        
        def initialize(checkflag=nil, requestid=nil)
          @CheckFlag = checkflag
          @RequestId = requestid
        end

        def deserialize(params)
          @CheckFlag = params['CheckFlag']
          @RequestId = params['RequestId']
        end
      end

      # CloseProxies请求参数结构体
      class CloseProxiesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: （旧参数，请切换到ProxyIds）通道的实例ID。
        # @type InstanceIds: Array
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # 更多详细信息请参阅：如何保证幂等性。
        # @type ClientToken: String
        # @param ProxyIds: （新参数）通道的实例ID。
        # @type ProxyIds: Array

        attr_accessor :InstanceIds, :ClientToken, :ProxyIds
        
        def initialize(instanceids=nil, clienttoken=nil, proxyids=nil)
          @InstanceIds = instanceids
          @ClientToken = clienttoken
          @ProxyIds = proxyids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @ClientToken = params['ClientToken']
          @ProxyIds = params['ProxyIds']
        end
      end

      # CloseProxies返回参数结构体
      class CloseProxiesResponse < TencentCloud::Common::AbstractModel
        # @param InvalidStatusInstanceSet: 非运行状态下的通道实例ID列表，不可开启。
        # @type InvalidStatusInstanceSet: Array
        # @param OperationFailedInstanceSet: 开启操作失败的通道实例ID列表。
        # @type OperationFailedInstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InvalidStatusInstanceSet, :OperationFailedInstanceSet, :RequestId
        
        def initialize(invalidstatusinstanceset=nil, operationfailedinstanceset=nil, requestid=nil)
          @InvalidStatusInstanceSet = invalidstatusinstanceset
          @OperationFailedInstanceSet = operationfailedinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @InvalidStatusInstanceSet = params['InvalidStatusInstanceSet']
          @OperationFailedInstanceSet = params['OperationFailedInstanceSet']
          @RequestId = params['RequestId']
        end
      end

      # CloseProxyGroup请求参数结构体
      class CloseProxyGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 通道组的实例 ID。
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # CloseProxyGroup返回参数结构体
      class CloseProxyGroupResponse < TencentCloud::Common::AbstractModel
        # @param InvalidStatusInstanceSet: 非运行状态下的通道实例ID列表，不可开启。
        # @type InvalidStatusInstanceSet: Array
        # @param OperationFailedInstanceSet: 开启操作失败的通道实例ID列表。
        # @type OperationFailedInstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InvalidStatusInstanceSet, :OperationFailedInstanceSet, :RequestId
        
        def initialize(invalidstatusinstanceset=nil, operationfailedinstanceset=nil, requestid=nil)
          @InvalidStatusInstanceSet = invalidstatusinstanceset
          @OperationFailedInstanceSet = operationfailedinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @InvalidStatusInstanceSet = params['InvalidStatusInstanceSet']
          @OperationFailedInstanceSet = params['OperationFailedInstanceSet']
          @RequestId = params['RequestId']
        end
      end

      # CloseSecurityPolicy请求参数结构体
      class CloseSecurityPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProxyId: 通道ID
        # @type ProxyId: String
        # @param PolicyId: 安全组策略ID
        # @type PolicyId: String

        attr_accessor :ProxyId, :PolicyId
        
        def initialize(proxyid=nil, policyid=nil)
          @ProxyId = proxyid
          @PolicyId = policyid
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @PolicyId = params['PolicyId']
        end
      end

      # CloseSecurityPolicy返回参数结构体
      class CloseSecurityPolicyResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步流程ID，可以通过DescribeAsyncTaskStatus 查询流程执行进展和状态
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 国家地区映射关系（名称和编码）
      class CountryAreaMap < TencentCloud::Common::AbstractModel
        # @param NationCountryName: 国家名称。
        # @type NationCountryName: String
        # @param NationCountryInnerCode: 国家编码。
        # @type NationCountryInnerCode: String
        # @param GeographicalZoneName: 地区名称。
        # @type GeographicalZoneName: String
        # @param GeographicalZoneInnerCode: 地区编码。
        # @type GeographicalZoneInnerCode: String
        # @param ContinentName: 大洲名称。
        # @type ContinentName: String
        # @param ContinentInnerCode: 大洲编码。
        # @type ContinentInnerCode: String

        attr_accessor :NationCountryName, :NationCountryInnerCode, :GeographicalZoneName, :GeographicalZoneInnerCode, :ContinentName, :ContinentInnerCode
        
        def initialize(nationcountryname=nil, nationcountryinnercode=nil, geographicalzonename=nil, geographicalzoneinnercode=nil, continentname=nil, continentinnercode=nil)
          @NationCountryName = nationcountryname
          @NationCountryInnerCode = nationcountryinnercode
          @GeographicalZoneName = geographicalzonename
          @GeographicalZoneInnerCode = geographicalzoneinnercode
          @ContinentName = continentname
          @ContinentInnerCode = continentinnercode
        end

        def deserialize(params)
          @NationCountryName = params['NationCountryName']
          @NationCountryInnerCode = params['NationCountryInnerCode']
          @GeographicalZoneName = params['GeographicalZoneName']
          @GeographicalZoneInnerCode = params['GeographicalZoneInnerCode']
          @ContinentName = params['ContinentName']
          @ContinentInnerCode = params['ContinentInnerCode']
        end
      end

      # CreateCertificate请求参数结构体
      class CreateCertificateRequest < TencentCloud::Common::AbstractModel
        # @param CertificateType: 证书类型。其中：
        # 0，表示基础认证配置；
        # 1，表示客户端CA证书；
        # 2，服务器SSL证书；
        # 3，表示源站CA证书；
        # 4，表示通道SSL证书。
        # @type CertificateType: Integer
        # @param CertificateContent: 证书内容。采用url编码。其中：
        # 当证书类型为基础认证配置时，该参数填写用户名/密码对。格式：“用户名：密码”，例如：root:FSGdT。其中密码使用htpasswd或者openssl，例如：openssl passwd -crypt 123456。
        # 当证书类型为CA/SSL证书时，该参数填写证书内容，格式为pem。
        # @type CertificateContent: String
        # @param CertificateAlias: 证书名称
        # @type CertificateAlias: String
        # @param CertificateKey: 密钥内容。采用url编码。仅当证书类型为SSL证书时，需要填写该参数。格式为pem。
        # @type CertificateKey: String

        attr_accessor :CertificateType, :CertificateContent, :CertificateAlias, :CertificateKey
        
        def initialize(certificatetype=nil, certificatecontent=nil, certificatealias=nil, certificatekey=nil)
          @CertificateType = certificatetype
          @CertificateContent = certificatecontent
          @CertificateAlias = certificatealias
          @CertificateKey = certificatekey
        end

        def deserialize(params)
          @CertificateType = params['CertificateType']
          @CertificateContent = params['CertificateContent']
          @CertificateAlias = params['CertificateAlias']
          @CertificateKey = params['CertificateKey']
        end
      end

      # CreateCertificate返回参数结构体
      class CreateCertificateResponse < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书ID
        # @type CertificateId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateId, :RequestId
        
        def initialize(certificateid=nil, requestid=nil)
          @CertificateId = certificateid
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDomainErrorPageInfo请求参数结构体
      class CreateDomainErrorPageInfoRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param Domain: 域名
        # @type Domain: String
        # @param ErrorNos: 原始错误码
        # @type ErrorNos: Array
        # @param Body: 新的响应包体
        # @type Body: String
        # @param NewErrorNo: 新错误码
        # @type NewErrorNo: Integer
        # @param ClearHeaders: 需要删除的响应头
        # @type ClearHeaders: Array
        # @param SetHeaders: 需要设置的响应头
        # @type SetHeaders: Array

        attr_accessor :ListenerId, :Domain, :ErrorNos, :Body, :NewErrorNo, :ClearHeaders, :SetHeaders
        
        def initialize(listenerid=nil, domain=nil, errornos=nil, body=nil, newerrorno=nil, clearheaders=nil, setheaders=nil)
          @ListenerId = listenerid
          @Domain = domain
          @ErrorNos = errornos
          @Body = body
          @NewErrorNo = newerrorno
          @ClearHeaders = clearheaders
          @SetHeaders = setheaders
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Domain = params['Domain']
          @ErrorNos = params['ErrorNos']
          @Body = params['Body']
          @NewErrorNo = params['NewErrorNo']
          @ClearHeaders = params['ClearHeaders']
          @SetHeaders = params['SetHeaders']
        end
      end

      # CreateDomainErrorPageInfo返回参数结构体
      class CreateDomainErrorPageInfoResponse < TencentCloud::Common::AbstractModel
        # @param ErrorPageId: 错误定制响应的配置ID
        # @type ErrorPageId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorPageId, :RequestId
        
        def initialize(errorpageid=nil, requestid=nil)
          @ErrorPageId = errorpageid
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorPageId = params['ErrorPageId']
          @RequestId = params['RequestId']
        end
      end

      # CreateDomain请求参数结构体
      class CreateDomainRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param Domain: 需要创建的域名，一个监听器下最大支持100个域名。
        # @type Domain: String
        # @param CertificateId: 服务器证书，用于客户端与GAAP的HTTPS的交互。
        # @type CertificateId: String
        # @param ClientCertificateId: 客户端CA证书，用于客户端与GAAP的HTTPS的交互。
        # 仅当采用双向认证的方式时，需要设置该字段或PolyClientCertificateIds字段。
        # @type ClientCertificateId: String
        # @param PolyClientCertificateIds: 客户端CA证书，用于客户端与GAAP的HTTPS的交互。
        # 仅当采用双向认证的方式时，需要设置该字段或ClientCertificateId字段。
        # @type PolyClientCertificateIds: Array

        attr_accessor :ListenerId, :Domain, :CertificateId, :ClientCertificateId, :PolyClientCertificateIds
        
        def initialize(listenerid=nil, domain=nil, certificateid=nil, clientcertificateid=nil, polyclientcertificateids=nil)
          @ListenerId = listenerid
          @Domain = domain
          @CertificateId = certificateid
          @ClientCertificateId = clientcertificateid
          @PolyClientCertificateIds = polyclientcertificateids
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Domain = params['Domain']
          @CertificateId = params['CertificateId']
          @ClientCertificateId = params['ClientCertificateId']
          @PolyClientCertificateIds = params['PolyClientCertificateIds']
        end
      end

      # CreateDomain返回参数结构体
      class CreateDomainResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # CreateHTTPListener请求参数结构体
      class CreateHTTPListenerRequest < TencentCloud::Common::AbstractModel
        # @param ListenerName: 监听器名称
        # @type ListenerName: String
        # @param Port: 监听器端口，基于同种传输层协议（TCP 或 UDP）的监听器，端口不可重复
        # @type Port: Integer
        # @param ProxyId: 通道ID，与GroupId不能同时设置，对应为通道创建监听器
        # @type ProxyId: String
        # @param GroupId: 通道组ID，与ProxyId不能同时设置，对应为通道组创建监听器
        # @type GroupId: String

        attr_accessor :ListenerName, :Port, :ProxyId, :GroupId
        
        def initialize(listenername=nil, port=nil, proxyid=nil, groupid=nil)
          @ListenerName = listenername
          @Port = port
          @ProxyId = proxyid
          @GroupId = groupid
        end

        def deserialize(params)
          @ListenerName = params['ListenerName']
          @Port = params['Port']
          @ProxyId = params['ProxyId']
          @GroupId = params['GroupId']
        end
      end

      # CreateHTTPListener返回参数结构体
      class CreateHTTPListenerResponse < TencentCloud::Common::AbstractModel
        # @param ListenerId: 创建的监听器ID
        # @type ListenerId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListenerId, :RequestId
        
        def initialize(listenerid=nil, requestid=nil)
          @ListenerId = listenerid
          @RequestId = requestid
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @RequestId = params['RequestId']
        end
      end

      # CreateHTTPSListener请求参数结构体
      class CreateHTTPSListenerRequest < TencentCloud::Common::AbstractModel
        # @param ListenerName: 监听器名称
        # @type ListenerName: String
        # @param Port: 监听器端口，基于同种传输层协议（TCP 或 UDP）的监听器，端口不可重复
        # @type Port: Integer
        # @param CertificateId: 服务器证书ID
        # @type CertificateId: String
        # @param ForwardProtocol: 加速通道转发到源站的协议类型：HTTP | HTTPS
        # @type ForwardProtocol: String
        # @param ProxyId: 通道ID，与GroupId之间只能设置一个。表示创建通道的监听器。
        # @type ProxyId: String
        # @param AuthType: 认证类型，其中：
        # 0，单向认证；
        # 1，双向认证。
        # 默认使用单向认证。
        # @type AuthType: Integer
        # @param ClientCertificateId: 客户端CA单证书ID，仅当双向认证时设置该参数或PolyClientCertificateIds参数
        # @type ClientCertificateId: String
        # @param PolyClientCertificateIds: 新的客户端多CA证书ID，仅当双向认证时设置该参数或设置ClientCertificateId参数
        # @type PolyClientCertificateIds: Array
        # @param GroupId: 通道组ID，与ProxyId之间只能设置一个。表示创建通道组的监听器。
        # @type GroupId: String

        attr_accessor :ListenerName, :Port, :CertificateId, :ForwardProtocol, :ProxyId, :AuthType, :ClientCertificateId, :PolyClientCertificateIds, :GroupId
        
        def initialize(listenername=nil, port=nil, certificateid=nil, forwardprotocol=nil, proxyid=nil, authtype=nil, clientcertificateid=nil, polyclientcertificateids=nil, groupid=nil)
          @ListenerName = listenername
          @Port = port
          @CertificateId = certificateid
          @ForwardProtocol = forwardprotocol
          @ProxyId = proxyid
          @AuthType = authtype
          @ClientCertificateId = clientcertificateid
          @PolyClientCertificateIds = polyclientcertificateids
          @GroupId = groupid
        end

        def deserialize(params)
          @ListenerName = params['ListenerName']
          @Port = params['Port']
          @CertificateId = params['CertificateId']
          @ForwardProtocol = params['ForwardProtocol']
          @ProxyId = params['ProxyId']
          @AuthType = params['AuthType']
          @ClientCertificateId = params['ClientCertificateId']
          @PolyClientCertificateIds = params['PolyClientCertificateIds']
          @GroupId = params['GroupId']
        end
      end

      # CreateHTTPSListener返回参数结构体
      class CreateHTTPSListenerResponse < TencentCloud::Common::AbstractModel
        # @param ListenerId: 创建的监听器ID
        # @type ListenerId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListenerId, :RequestId
        
        def initialize(listenerid=nil, requestid=nil)
          @ListenerId = listenerid
          @RequestId = requestid
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @RequestId = params['RequestId']
        end
      end

      # CreateProxyGroupDomain请求参数结构体
      class CreateProxyGroupDomainRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 需要开启域名的通道组ID。
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # CreateProxyGroupDomain返回参数结构体
      class CreateProxyGroupDomainResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 通道组ID。
        # @type GroupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupId, :RequestId
        
        def initialize(groupid=nil, requestid=nil)
          @GroupId = groupid
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateProxyGroup请求参数结构体
      class CreateProxyGroupRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 通道组所属项目ID
        # @type ProjectId: Integer
        # @param GroupName: 通道组别名
        # @type GroupName: String
        # @param RealServerRegion: 源站地域，参考接口DescribeDestRegions 返回参数RegionDetail中的RegionId
        # @type RealServerRegion: String
        # @param TagSet: 标签列表
        # @type TagSet: Array
        # @param AccessRegionSet: 加速地域列表，包括加速地域名，及该地域对应的带宽和并发配置。
        # @type AccessRegionSet: Array

        attr_accessor :ProjectId, :GroupName, :RealServerRegion, :TagSet, :AccessRegionSet
        
        def initialize(projectid=nil, groupname=nil, realserverregion=nil, tagset=nil, accessregionset=nil)
          @ProjectId = projectid
          @GroupName = groupname
          @RealServerRegion = realserverregion
          @TagSet = tagset
          @AccessRegionSet = accessregionset
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @GroupName = params['GroupName']
          @RealServerRegion = params['RealServerRegion']
          @TagSet = params['TagSet']
          @AccessRegionSet = params['AccessRegionSet']
        end
      end

      # CreateProxyGroup返回参数结构体
      class CreateProxyGroupResponse < TencentCloud::Common::AbstractModel
        # @param GroupId: 通道组ID
        # @type GroupId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupId, :RequestId
        
        def initialize(groupid=nil, requestid=nil)
          @GroupId = groupid
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @RequestId = params['RequestId']
        end
      end

      # CreateProxy请求参数结构体
      class CreateProxyRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 通道的项目ID。
        # @type ProjectId: Integer
        # @param ProxyName: 通道名称。
        # @type ProxyName: String
        # @param AccessRegion: 接入地域。
        # @type AccessRegion: String
        # @param Bandwidth: 通道带宽上限，单位：Mbps。
        # @type Bandwidth: Integer
        # @param Concurrent: 通道并发量上限，表示同时在线的连接数，单位：万。
        # @type Concurrent: Integer
        # @param RealServerRegion: 源站地域。当GroupId存在时，源站地域为通道组的源站地域,此时可不填该字段。当GroupId不存在时，需要填写该字段
        # @type RealServerRegion: String
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # 更多详细信息请参阅：如何保证幂等性。
        # @type ClientToken: String
        # @param GroupId: 通道所在的通道组ID，当在通道组中创建通道时必带，否则忽略该字段。
        # @type GroupId: String
        # @param TagSet: 通道需要添加的标签列表。
        # @type TagSet: Array
        # @param ClonedProxyId: 被复制的通道ID。只有处于运行中状态的通道可以被复制。
        # 当设置该参数时，表示复制该通道。
        # @type ClonedProxyId: String
        # @param BillingType: 计费方式 (0:按带宽计费，1:按流量计费 默认按带宽计费）
        # @type BillingType: Integer

        attr_accessor :ProjectId, :ProxyName, :AccessRegion, :Bandwidth, :Concurrent, :RealServerRegion, :ClientToken, :GroupId, :TagSet, :ClonedProxyId, :BillingType
        
        def initialize(projectid=nil, proxyname=nil, accessregion=nil, bandwidth=nil, concurrent=nil, realserverregion=nil, clienttoken=nil, groupid=nil, tagset=nil, clonedproxyid=nil, billingtype=nil)
          @ProjectId = projectid
          @ProxyName = proxyname
          @AccessRegion = accessregion
          @Bandwidth = bandwidth
          @Concurrent = concurrent
          @RealServerRegion = realserverregion
          @ClientToken = clienttoken
          @GroupId = groupid
          @TagSet = tagset
          @ClonedProxyId = clonedproxyid
          @BillingType = billingtype
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @ProxyName = params['ProxyName']
          @AccessRegion = params['AccessRegion']
          @Bandwidth = params['Bandwidth']
          @Concurrent = params['Concurrent']
          @RealServerRegion = params['RealServerRegion']
          @ClientToken = params['ClientToken']
          @GroupId = params['GroupId']
          @TagSet = params['TagSet']
          @ClonedProxyId = params['ClonedProxyId']
          @BillingType = params['BillingType']
        end
      end

      # CreateProxy返回参数结构体
      class CreateProxyResponse < TencentCloud::Common::AbstractModel
        # @param InstanceId: 通道的实例ID。
        # @type InstanceId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceId, :RequestId
        
        def initialize(instanceid=nil, requestid=nil)
          @InstanceId = instanceid
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @RequestId = params['RequestId']
        end
      end

      # CreateRule请求参数结构体
      class CreateRuleRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 7层监听器ID
        # @type ListenerId: String
        # @param Domain: 转发规则的域名
        # @type Domain: String
        # @param Path: 转发规则的路径
        # @type Path: String
        # @param RealServerType: 转发规则对应源站的类型，支持IP和DOMAIN类型。
        # @type RealServerType: String
        # @param Scheduler: 规则转发源站调度策略，支持轮询（rr），加权轮询（wrr），最小连接数（lc）。
        # @type Scheduler: String
        # @param HealthCheck: 规则是否开启健康检查，1开启，0关闭。
        # @type HealthCheck: Integer
        # @param CheckParams: 源站健康检查相关参数
        # @type CheckParams: :class:`Tencentcloud::Gaap.v20180529.models.RuleCheckParams`
        # @param ForwardProtocol: 加速通道转发到源站的协议类型：支持HTTP或HTTPS。
        # 不传递该字段时表示使用对应监听器的ForwardProtocol。
        # @type ForwardProtocol: String
        # @param ForwardHost: 加速通道转发到远照的host，不设置该参数时，使用默认的host设置，即客户端发起的http请求的host。
        # @type ForwardHost: String

        attr_accessor :ListenerId, :Domain, :Path, :RealServerType, :Scheduler, :HealthCheck, :CheckParams, :ForwardProtocol, :ForwardHost
        
        def initialize(listenerid=nil, domain=nil, path=nil, realservertype=nil, scheduler=nil, healthcheck=nil, checkparams=nil, forwardprotocol=nil, forwardhost=nil)
          @ListenerId = listenerid
          @Domain = domain
          @Path = path
          @RealServerType = realservertype
          @Scheduler = scheduler
          @HealthCheck = healthcheck
          @CheckParams = checkparams
          @ForwardProtocol = forwardprotocol
          @ForwardHost = forwardhost
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Domain = params['Domain']
          @Path = params['Path']
          @RealServerType = params['RealServerType']
          @Scheduler = params['Scheduler']
          @HealthCheck = params['HealthCheck']
          unless params['CheckParams'].nil?
            @CheckParams = RuleCheckParams.new.deserialize(params[CheckParams])
          end
          @ForwardProtocol = params['ForwardProtocol']
          @ForwardHost = params['ForwardHost']
        end
      end

      # CreateRule返回参数结构体
      class CreateRuleResponse < TencentCloud::Common::AbstractModel
        # @param RuleId: 创建转发规则成功返回规则ID
        # @type RuleId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleId, :RequestId
        
        def initialize(ruleid=nil, requestid=nil)
          @RuleId = ruleid
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSecurityPolicy请求参数结构体
      class CreateSecurityPolicyRequest < TencentCloud::Common::AbstractModel
        # @param DefaultAction: 默认策略：ACCEPT或DROP
        # @type DefaultAction: String
        # @param ProxyId: 加速通道ID
        # @type ProxyId: String
        # @param GroupId: 通道组ID
        # @type GroupId: String

        attr_accessor :DefaultAction, :ProxyId, :GroupId
        
        def initialize(defaultaction=nil, proxyid=nil, groupid=nil)
          @DefaultAction = defaultaction
          @ProxyId = proxyid
          @GroupId = groupid
        end

        def deserialize(params)
          @DefaultAction = params['DefaultAction']
          @ProxyId = params['ProxyId']
          @GroupId = params['GroupId']
        end
      end

      # CreateSecurityPolicy返回参数结构体
      class CreateSecurityPolicyResponse < TencentCloud::Common::AbstractModel
        # @param PolicyId: 安全策略ID
        # @type PolicyId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :PolicyId, :RequestId
        
        def initialize(policyid=nil, requestid=nil)
          @PolicyId = policyid
          @RequestId = requestid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @RequestId = params['RequestId']
        end
      end

      # CreateSecurityRules请求参数结构体
      class CreateSecurityRulesRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 安全策略ID
        # @type PolicyId: String
        # @param RuleList: 访问规则列表
        # @type RuleList: Array

        attr_accessor :PolicyId, :RuleList
        
        def initialize(policyid=nil, rulelist=nil)
          @PolicyId = policyid
          @RuleList = rulelist
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @RuleList = params['RuleList']
        end
      end

      # CreateSecurityRules返回参数结构体
      class CreateSecurityRulesResponse < TencentCloud::Common::AbstractModel
        # @param RuleIdList: 规则ID列表
        # @type RuleIdList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RuleIdList, :RequestId
        
        def initialize(ruleidlist=nil, requestid=nil)
          @RuleIdList = ruleidlist
          @RequestId = requestid
        end

        def deserialize(params)
          @RuleIdList = params['RuleIdList']
          @RequestId = params['RequestId']
        end
      end

      # CreateTCPListeners请求参数结构体
      class CreateTCPListenersRequest < TencentCloud::Common::AbstractModel
        # @param ListenerName: 监听器名称。
        # @type ListenerName: String
        # @param Ports: 监听器端口列表。
        # @type Ports: Array
        # @param Scheduler: 监听器源站调度策略，支持轮询（rr），加权轮询（wrr），最小连接数（lc）。
        # @type Scheduler: String
        # @param HealthCheck: 源站是否开启健康检查：1开启，0关闭，UDP监听器不支持健康检查
        # @type HealthCheck: Integer
        # @param RealServerType: 监听器对应源站类型，支持IP或者DOMAIN类型。DOMAIN源站类型不支持wrr的源站调度策略。
        # @type RealServerType: String
        # @param ProxyId: 通道ID，ProxyId和GroupId必须设置一个，但不能同时设置。
        # @type ProxyId: String
        # @param GroupId: 通道组ID，ProxyId和GroupId必须设置一个，但不能同时设置。
        # @type GroupId: String
        # @param DelayLoop: 源站健康检查时间间隔，单位：秒。时间间隔取值在[5，300]之间。
        # @type DelayLoop: Integer
        # @param ConnectTimeout: 源站健康检查响应超时时间，单位：秒。超时时间取值在[2，60]之间。超时时间应小于健康检查时间间隔DelayLoop。
        # @type ConnectTimeout: Integer
        # @param RealServerPorts: 源站端口列表，该参数仅支持v1版本监听器和通道组监听器。
        # @type RealServerPorts: Array
        # @param ClientIPMethod: 监听器获取客户端 IP 的方式，0表示 TOA, 1表示Proxy Protocol
        # @type ClientIPMethod: Integer

        attr_accessor :ListenerName, :Ports, :Scheduler, :HealthCheck, :RealServerType, :ProxyId, :GroupId, :DelayLoop, :ConnectTimeout, :RealServerPorts, :ClientIPMethod
        
        def initialize(listenername=nil, ports=nil, scheduler=nil, healthcheck=nil, realservertype=nil, proxyid=nil, groupid=nil, delayloop=nil, connecttimeout=nil, realserverports=nil, clientipmethod=nil)
          @ListenerName = listenername
          @Ports = ports
          @Scheduler = scheduler
          @HealthCheck = healthcheck
          @RealServerType = realservertype
          @ProxyId = proxyid
          @GroupId = groupid
          @DelayLoop = delayloop
          @ConnectTimeout = connecttimeout
          @RealServerPorts = realserverports
          @ClientIPMethod = clientipmethod
        end

        def deserialize(params)
          @ListenerName = params['ListenerName']
          @Ports = params['Ports']
          @Scheduler = params['Scheduler']
          @HealthCheck = params['HealthCheck']
          @RealServerType = params['RealServerType']
          @ProxyId = params['ProxyId']
          @GroupId = params['GroupId']
          @DelayLoop = params['DelayLoop']
          @ConnectTimeout = params['ConnectTimeout']
          @RealServerPorts = params['RealServerPorts']
          @ClientIPMethod = params['ClientIPMethod']
        end
      end

      # CreateTCPListeners返回参数结构体
      class CreateTCPListenersResponse < TencentCloud::Common::AbstractModel
        # @param ListenerIds: 返回监听器ID
        # @type ListenerIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListenerIds, :RequestId
        
        def initialize(listenerids=nil, requestid=nil)
          @ListenerIds = listenerids
          @RequestId = requestid
        end

        def deserialize(params)
          @ListenerIds = params['ListenerIds']
          @RequestId = params['RequestId']
        end
      end

      # CreateUDPListeners请求参数结构体
      class CreateUDPListenersRequest < TencentCloud::Common::AbstractModel
        # @param ListenerName: 监听器名称
        # @type ListenerName: String
        # @param Ports: 监听器端口列表
        # @type Ports: Array
        # @param Scheduler: 监听器源站调度策略，支持轮询（rr），加权轮询（wrr），最小连接数（lc）
        # @type Scheduler: String
        # @param RealServerType: 监听器对应源站类型，支持IP或者DOMAIN类型
        # @type RealServerType: String
        # @param ProxyId: 通道ID，ProxyId和GroupId必须设置一个，但不能同时设置。
        # @type ProxyId: String
        # @param GroupId: 通道组ID，ProxyId和GroupId必须设置一个，但不能同时设置。
        # @type GroupId: String
        # @param RealServerPorts: 源站端口列表，该参数仅支持v1版本监听器和通道组监听器
        # @type RealServerPorts: Array

        attr_accessor :ListenerName, :Ports, :Scheduler, :RealServerType, :ProxyId, :GroupId, :RealServerPorts
        
        def initialize(listenername=nil, ports=nil, scheduler=nil, realservertype=nil, proxyid=nil, groupid=nil, realserverports=nil)
          @ListenerName = listenername
          @Ports = ports
          @Scheduler = scheduler
          @RealServerType = realservertype
          @ProxyId = proxyid
          @GroupId = groupid
          @RealServerPorts = realserverports
        end

        def deserialize(params)
          @ListenerName = params['ListenerName']
          @Ports = params['Ports']
          @Scheduler = params['Scheduler']
          @RealServerType = params['RealServerType']
          @ProxyId = params['ProxyId']
          @GroupId = params['GroupId']
          @RealServerPorts = params['RealServerPorts']
        end
      end

      # CreateUDPListeners返回参数结构体
      class CreateUDPListenersResponse < TencentCloud::Common::AbstractModel
        # @param ListenerIds: 返回监听器ID
        # @type ListenerIds: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ListenerIds, :RequestId
        
        def initialize(listenerids=nil, requestid=nil)
          @ListenerIds = listenerids
          @RequestId = requestid
        end

        def deserialize(params)
          @ListenerIds = params['ListenerIds']
          @RequestId = params['RequestId']
        end
      end

      # DeleteCertificate请求参数结构体
      class DeleteCertificateRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 需要删除的证书ID。
        # @type CertificateId: String

        attr_accessor :CertificateId
        
        def initialize(certificateid=nil)
          @CertificateId = certificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
        end
      end

      # DeleteCertificate返回参数结构体
      class DeleteCertificateResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteDomainErrorPageInfo请求参数结构体
      class DeleteDomainErrorPageInfoRequest < TencentCloud::Common::AbstractModel
        # @param ErrorPageId: 定制错误响应页的唯一ID，请参考CreateDomainErrorPageInfo的响应
        # @type ErrorPageId: String

        attr_accessor :ErrorPageId
        
        def initialize(errorpageid=nil)
          @ErrorPageId = errorpageid
        end

        def deserialize(params)
          @ErrorPageId = params['ErrorPageId']
        end
      end

      # DeleteDomainErrorPageInfo返回参数结构体
      class DeleteDomainErrorPageInfoResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteDomain请求参数结构体
      class DeleteDomainRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param Domain: 需要删除的域名
        # @type Domain: String
        # @param Force: 是否强制删除已绑定源站的转发规则，0非强制，1强制。
        # 当采用非强制删除时，如果域名下已有规则绑定了源站，则无法删除。
        # @type Force: Integer

        attr_accessor :ListenerId, :Domain, :Force
        
        def initialize(listenerid=nil, domain=nil, force=nil)
          @ListenerId = listenerid
          @Domain = domain
          @Force = force
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Domain = params['Domain']
          @Force = params['Force']
        end
      end

      # DeleteDomain返回参数结构体
      class DeleteDomainResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteListeners请求参数结构体
      class DeleteListenersRequest < TencentCloud::Common::AbstractModel
        # @param ListenerIds: 待删除的监听器ID列表
        # @type ListenerIds: Array
        # @param Force: 已绑定源站的监听器是否允许强制删除，1：允许， 0：不允许
        # @type Force: Integer
        # @param GroupId: 通道组ID，该参数和GroupId必须设置一个，但不能同时设置。
        # @type GroupId: String
        # @param ProxyId: 通道ID，该参数和GroupId必须设置一个，但不能同时设置。
        # @type ProxyId: String

        attr_accessor :ListenerIds, :Force, :GroupId, :ProxyId
        
        def initialize(listenerids=nil, force=nil, groupid=nil, proxyid=nil)
          @ListenerIds = listenerids
          @Force = force
          @GroupId = groupid
          @ProxyId = proxyid
        end

        def deserialize(params)
          @ListenerIds = params['ListenerIds']
          @Force = params['Force']
          @GroupId = params['GroupId']
          @ProxyId = params['ProxyId']
        end
      end

      # DeleteListeners返回参数结构体
      class DeleteListenersResponse < TencentCloud::Common::AbstractModel
        # @param OperationFailedListenerSet: 删除操作失败的监听器ID列表
        # @type OperationFailedListenerSet: Array
        # @param OperationSucceedListenerSet: 删除操作成功的监听器ID列表
        # @type OperationSucceedListenerSet: Array
        # @param InvalidStatusListenerSet: 无效的监听器ID列表，如：监听器不存在，监听器对应实例不匹配
        # @type InvalidStatusListenerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :OperationFailedListenerSet, :OperationSucceedListenerSet, :InvalidStatusListenerSet, :RequestId
        
        def initialize(operationfailedlistenerset=nil, operationsucceedlistenerset=nil, invalidstatuslistenerset=nil, requestid=nil)
          @OperationFailedListenerSet = operationfailedlistenerset
          @OperationSucceedListenerSet = operationsucceedlistenerset
          @InvalidStatusListenerSet = invalidstatuslistenerset
          @RequestId = requestid
        end

        def deserialize(params)
          @OperationFailedListenerSet = params['OperationFailedListenerSet']
          @OperationSucceedListenerSet = params['OperationSucceedListenerSet']
          @InvalidStatusListenerSet = params['InvalidStatusListenerSet']
          @RequestId = params['RequestId']
        end
      end

      # DeleteProxyGroup请求参数结构体
      class DeleteProxyGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 需要删除的通道组ID。
        # @type GroupId: String
        # @param Force: 强制删除标识。其中：
        # 0，不强制删除，
        # 1，强制删除。
        # 默认为0，当通道组中存在通道或通道组中存在监听器/规则绑定了源站时，且Force为0时，该操作会返回失败。
        # @type Force: Integer

        attr_accessor :GroupId, :Force
        
        def initialize(groupid=nil, force=nil)
          @GroupId = groupid
          @Force = force
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Force = params['Force']
        end
      end

      # DeleteProxyGroup返回参数结构体
      class DeleteProxyGroupResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteRule请求参数结构体
      class DeleteRuleRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 7层监听器ID
        # @type ListenerId: String
        # @param RuleId: 转发规则ID
        # @type RuleId: String
        # @param Force: 是否可以强制删除已绑定源站的转发规则，0非强制，1强制
        # @type Force: Integer

        attr_accessor :ListenerId, :RuleId, :Force
        
        def initialize(listenerid=nil, ruleid=nil, force=nil)
          @ListenerId = listenerid
          @RuleId = ruleid
          @Force = force
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @RuleId = params['RuleId']
          @Force = params['Force']
        end
      end

      # DeleteRule返回参数结构体
      class DeleteRuleResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteSecurityPolicy请求参数结构体
      class DeleteSecurityPolicyRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 策略ID
        # @type PolicyId: String

        attr_accessor :PolicyId
        
        def initialize(policyid=nil)
          @PolicyId = policyid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
        end
      end

      # DeleteSecurityPolicy返回参数结构体
      class DeleteSecurityPolicyResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DeleteSecurityRules请求参数结构体
      class DeleteSecurityRulesRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 安全策略ID
        # @type PolicyId: String
        # @param RuleIdList: 访问规则ID列表
        # @type RuleIdList: Array

        attr_accessor :PolicyId, :RuleIdList
        
        def initialize(policyid=nil, ruleidlist=nil)
          @PolicyId = policyid
          @RuleIdList = ruleidlist
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
          @RuleIdList = params['RuleIdList']
        end
      end

      # DeleteSecurityRules返回参数结构体
      class DeleteSecurityRulesResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccessRegionsByDestRegion请求参数结构体
      class DescribeAccessRegionsByDestRegionRequest < TencentCloud::Common::AbstractModel
        # @param DestRegion: 源站区域：接口DescribeDestRegions返回DestRegionSet中的RegionId字段值
        # @type DestRegion: String

        attr_accessor :DestRegion
        
        def initialize(destregion=nil)
          @DestRegion = destregion
        end

        def deserialize(params)
          @DestRegion = params['DestRegion']
        end
      end

      # DescribeAccessRegionsByDestRegion返回参数结构体
      class DescribeAccessRegionsByDestRegionResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 可用加速区域数量
        # @type TotalCount: Integer
        # @param AccessRegionSet: 可用加速区域信息列表
        # @type AccessRegionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AccessRegionSet, :RequestId
        
        def initialize(totalcount=nil, accessregionset=nil, requestid=nil)
          @TotalCount = totalcount
          @AccessRegionSet = accessregionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @AccessRegionSet = params['AccessRegionSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeAccessRegions请求参数结构体
      class DescribeAccessRegionsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeAccessRegions返回参数结构体
      class DescribeAccessRegionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 加速区域总数
        # @type TotalCount: Integer
        # @param AccessRegionSet: 加速区域详情列表
        # @type AccessRegionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :AccessRegionSet, :RequestId
        
        def initialize(totalcount=nil, accessregionset=nil, requestid=nil)
          @TotalCount = totalcount
          @AccessRegionSet = accessregionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @AccessRegionSet = params['AccessRegionSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCertificateDetail请求参数结构体
      class DescribeCertificateDetailRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书ID。
        # @type CertificateId: String

        attr_accessor :CertificateId
        
        def initialize(certificateid=nil)
          @CertificateId = certificateid
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
        end
      end

      # DescribeCertificateDetail返回参数结构体
      class DescribeCertificateDetailResponse < TencentCloud::Common::AbstractModel
        # @param CertificateDetail: 证书详情。
        # @type CertificateDetail: :class:`Tencentcloud::Gaap.v20180529.models.CertificateDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateDetail, :RequestId
        
        def initialize(certificatedetail=nil, requestid=nil)
          @CertificateDetail = certificatedetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['CertificateDetail'].nil?
            @CertificateDetail = CertificateDetail.new.deserialize(params[CertificateDetail])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeCertificates请求参数结构体
      class DescribeCertificatesRequest < TencentCloud::Common::AbstractModel
        # @param CertificateType: 证书类型。其中：
        # 0，表示基础认证配置；
        # 1，表示客户端CA证书；
        # 2，表示服务器SSL证书；
        # 3，表示源站CA证书；
        # 4，表示通道SSL证书。
        # -1，所有类型。
        # 默认为-1。
        # @type CertificateType: Integer
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 限制数量，默认为20。
        # @type Limit: Integer

        attr_accessor :CertificateType, :Offset, :Limit
        
        def initialize(certificatetype=nil, offset=nil, limit=nil)
          @CertificateType = certificatetype
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @CertificateType = params['CertificateType']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeCertificates返回参数结构体
      class DescribeCertificatesResponse < TencentCloud::Common::AbstractModel
        # @param CertificateSet: 服务器证书列表，包括证书ID 和证书名称。
        # @type CertificateSet: Array
        # @param TotalCount: 满足查询条件的服务器证书总数量。
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CertificateSet, :TotalCount, :RequestId
        
        def initialize(certificateset=nil, totalcount=nil, requestid=nil)
          @CertificateSet = certificateset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @CertificateSet = params['CertificateSet']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCountryAreaMapping请求参数结构体
      class DescribeCountryAreaMappingRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeCountryAreaMapping返回参数结构体
      class DescribeCountryAreaMappingResponse < TencentCloud::Common::AbstractModel
        # @param CountryAreaMappingList: 国家地区编码映射表。
        # @type CountryAreaMappingList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CountryAreaMappingList, :RequestId
        
        def initialize(countryareamappinglist=nil, requestid=nil)
          @CountryAreaMappingList = countryareamappinglist
          @RequestId = requestid
        end

        def deserialize(params)
          @CountryAreaMappingList = params['CountryAreaMappingList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDestRegions请求参数结构体
      class DescribeDestRegionsRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeDestRegions返回参数结构体
      class DescribeDestRegionsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 源站区域总数
        # @type TotalCount: Integer
        # @param DestRegionSet: 源站区域详情列表
        # @type DestRegionSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DestRegionSet, :RequestId
        
        def initialize(totalcount=nil, destregionset=nil, requestid=nil)
          @TotalCount = totalcount
          @DestRegionSet = destregionset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @DestRegionSet = params['DestRegionSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainErrorPageInfoByIds请求参数结构体
      class DescribeDomainErrorPageInfoByIdsRequest < TencentCloud::Common::AbstractModel
        # @param ErrorPageIds: 定制错误ID列表,最多支持10个
        # @type ErrorPageIds: Array

        attr_accessor :ErrorPageIds
        
        def initialize(errorpageids=nil)
          @ErrorPageIds = errorpageids
        end

        def deserialize(params)
          @ErrorPageIds = params['ErrorPageIds']
        end
      end

      # DescribeDomainErrorPageInfoByIds返回参数结构体
      class DescribeDomainErrorPageInfoByIdsResponse < TencentCloud::Common::AbstractModel
        # @param ErrorPageSet: 定制错误响应配置集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorPageSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorPageSet, :RequestId
        
        def initialize(errorpageset=nil, requestid=nil)
          @ErrorPageSet = errorpageset
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorPageSet = params['ErrorPageSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeDomainErrorPageInfo请求参数结构体
      class DescribeDomainErrorPageInfoRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param Domain: 域名
        # @type Domain: String

        attr_accessor :ListenerId, :Domain
        
        def initialize(listenerid=nil, domain=nil)
          @ListenerId = listenerid
          @Domain = domain
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Domain = params['Domain']
        end
      end

      # DescribeDomainErrorPageInfo返回参数结构体
      class DescribeDomainErrorPageInfoResponse < TencentCloud::Common::AbstractModel
        # @param ErrorPageSet: 定制错误响应配置集
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ErrorPageSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ErrorPageSet, :RequestId
        
        def initialize(errorpageset=nil, requestid=nil)
          @ErrorPageSet = errorpageset
          @RequestId = requestid
        end

        def deserialize(params)
          @ErrorPageSet = params['ErrorPageSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupAndStatisticsProxy请求参数结构体
      class DescribeGroupAndStatisticsProxyRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer

        attr_accessor :ProjectId
        
        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeGroupAndStatisticsProxy返回参数结构体
      class DescribeGroupAndStatisticsProxyResponse < TencentCloud::Common::AbstractModel
        # @param GroupSet: 可以统计的通道组信息
        # @type GroupSet: Array
        # @param TotalCount: 通道组数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :GroupSet, :TotalCount, :RequestId
        
        def initialize(groupset=nil, totalcount=nil, requestid=nil)
          @GroupSet = groupset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @GroupSet = params['GroupSet']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeGroupDomainConfig请求参数结构体
      class DescribeGroupDomainConfigRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 通道组ID。
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DescribeGroupDomainConfig返回参数结构体
      class DescribeGroupDomainConfigResponse < TencentCloud::Common::AbstractModel
        # @param AccessRegionList: 域名解析就近接入配置列表。
        # @type AccessRegionList: Array
        # @param DefaultDnsIp: 默认访问Ip。
        # @type DefaultDnsIp: String
        # @param GroupId: 通道组ID。
        # @type GroupId: String
        # @param AccessRegionCount: 接入地域的配置的总数。
        # @type AccessRegionCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :AccessRegionList, :DefaultDnsIp, :GroupId, :AccessRegionCount, :RequestId
        
        def initialize(accessregionlist=nil, defaultdnsip=nil, groupid=nil, accessregioncount=nil, requestid=nil)
          @AccessRegionList = accessregionlist
          @DefaultDnsIp = defaultdnsip
          @GroupId = groupid
          @AccessRegionCount = accessregioncount
          @RequestId = requestid
        end

        def deserialize(params)
          @AccessRegionList = params['AccessRegionList']
          @DefaultDnsIp = params['DefaultDnsIp']
          @GroupId = params['GroupId']
          @AccessRegionCount = params['AccessRegionCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHTTPListeners请求参数结构体
      class DescribeHTTPListenersRequest < TencentCloud::Common::AbstractModel
        # @param ProxyId: 通道ID
        # @type ProxyId: String
        # @param ListenerId: 过滤条件，按照监听器ID进行精确查询
        # @type ListenerId: String
        # @param ListenerName: 过滤条件，按照监听器名称进行精确查询
        # @type ListenerName: String
        # @param Port: 过滤条件，按照监听器端口进行精确查询
        # @type Port: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 限制数量，默认为20个
        # @type Limit: Integer
        # @param SearchValue: 过滤条件，支持按照端口或监听器名称进行模糊查询，该参数不能与ListenerName和Port同时使用
        # @type SearchValue: String
        # @param GroupId: 通道组ID
        # @type GroupId: String

        attr_accessor :ProxyId, :ListenerId, :ListenerName, :Port, :Offset, :Limit, :SearchValue, :GroupId
        
        def initialize(proxyid=nil, listenerid=nil, listenername=nil, port=nil, offset=nil, limit=nil, searchvalue=nil, groupid=nil)
          @ProxyId = proxyid
          @ListenerId = listenerid
          @ListenerName = listenername
          @Port = port
          @Offset = offset
          @Limit = limit
          @SearchValue = searchvalue
          @GroupId = groupid
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Port = params['Port']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchValue = params['SearchValue']
          @GroupId = params['GroupId']
        end
      end

      # DescribeHTTPListeners返回参数结构体
      class DescribeHTTPListenersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 监听器数量
        # @type TotalCount: Integer
        # @param ListenerSet: HTTP监听器列表
        # @type ListenerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ListenerSet, :RequestId
        
        def initialize(totalcount=nil, listenerset=nil, requestid=nil)
          @TotalCount = totalcount
          @ListenerSet = listenerset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ListenerSet = params['ListenerSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeHTTPSListeners请求参数结构体
      class DescribeHTTPSListenersRequest < TencentCloud::Common::AbstractModel
        # @param ProxyId: 过滤条件，通道ID
        # @type ProxyId: String
        # @param ListenerId: 过滤条件，根据监听器ID进行精确查询。
        # @type ListenerId: String
        # @param ListenerName: 过滤条件，根据监听器名称进行精确查询。
        # @type ListenerName: String
        # @param Port: 过滤条件，根据监听器端口进行精确查询。
        # @type Port: Integer
        # @param Offset: 偏移量， 默认为0
        # @type Offset: Integer
        # @param Limit: 限制数量，默认为20
        # @type Limit: Integer
        # @param SearchValue: 过滤条件，支持按照端口或监听器名称进行模糊查询
        # @type SearchValue: String
        # @param GroupId: 过滤条件，通道组ID
        # @type GroupId: String

        attr_accessor :ProxyId, :ListenerId, :ListenerName, :Port, :Offset, :Limit, :SearchValue, :GroupId
        
        def initialize(proxyid=nil, listenerid=nil, listenername=nil, port=nil, offset=nil, limit=nil, searchvalue=nil, groupid=nil)
          @ProxyId = proxyid
          @ListenerId = listenerid
          @ListenerName = listenername
          @Port = port
          @Offset = offset
          @Limit = limit
          @SearchValue = searchvalue
          @GroupId = groupid
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Port = params['Port']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @SearchValue = params['SearchValue']
          @GroupId = params['GroupId']
        end
      end

      # DescribeHTTPSListeners返回参数结构体
      class DescribeHTTPSListenersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 监听器数量
        # @type TotalCount: Integer
        # @param ListenerSet: HTTPS监听器列表
        # @type ListenerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ListenerSet, :RequestId
        
        def initialize(totalcount=nil, listenerset=nil, requestid=nil)
          @TotalCount = totalcount
          @ListenerSet = listenerset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ListenerSet = params['ListenerSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeListenerRealServers请求参数结构体
      class DescribeListenerRealServersRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String

        attr_accessor :ListenerId
        
        def initialize(listenerid=nil)
          @ListenerId = listenerid
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
        end
      end

      # DescribeListenerRealServers返回参数结构体
      class DescribeListenerRealServersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 可绑定源站的个数
        # @type TotalCount: Integer
        # @param RealServerSet: 源站信息列表
        # @type RealServerSet: Array
        # @param BindRealServerTotalCount: 已绑定源站的个数
        # @type BindRealServerTotalCount: Integer
        # @param BindRealServerSet: 已绑定源站信息列表
        # @type BindRealServerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RealServerSet, :BindRealServerTotalCount, :BindRealServerSet, :RequestId
        
        def initialize(totalcount=nil, realserverset=nil, bindrealservertotalcount=nil, bindrealserverset=nil, requestid=nil)
          @TotalCount = totalcount
          @RealServerSet = realserverset
          @BindRealServerTotalCount = bindrealservertotalcount
          @BindRealServerSet = bindrealserverset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RealServerSet = params['RealServerSet']
          @BindRealServerTotalCount = params['BindRealServerTotalCount']
          @BindRealServerSet = params['BindRealServerSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeListenerStatistics请求参数结构体
      class DescribeListenerStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param MetricNames: 统计指标名称列表，支持: 入带宽:InBandwidth, 出带宽:OutBandwidth, 并发:Concurrent, 入包量:InPackets, 出包量:OutPackets。
        # @type MetricNames: Array
        # @param Granularity: 监控粒度，目前支持300，3600，86400，单位：秒。
        # 查询时间范围不超过1天，支持最小粒度300秒；
        # 查询间范围不超过7天，支持最小粒度3600秒；
        # 查询间范围超过7天，支持最小粒度86400秒。
        # @type Granularity: Integer

        attr_accessor :ListenerId, :StartTime, :EndTime, :MetricNames, :Granularity
        
        def initialize(listenerid=nil, starttime=nil, endtime=nil, metricnames=nil, granularity=nil)
          @ListenerId = listenerid
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @Granularity = granularity
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricNames = params['MetricNames']
          @Granularity = params['Granularity']
        end
      end

      # DescribeListenerStatistics返回参数结构体
      class DescribeListenerStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param StatisticsData: 通道组统计数据
        # @type StatisticsData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StatisticsData, :RequestId
        
        def initialize(statisticsdata=nil, requestid=nil)
          @StatisticsData = statisticsdata
          @RequestId = requestid
        end

        def deserialize(params)
          @StatisticsData = params['StatisticsData']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProxies请求参数结构体
      class DescribeProxiesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: （旧参数，请切换到ProxyIds）按照一个或者多个实例ID查询。每次请求的实例的上限为100。参数不支持同时指定InstanceIds和Filters。
        # @type InstanceIds: Array
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为100。
        # @type Limit: Integer
        # @param Filters: 过滤条件。
        # 每次请求的Filters的上限为10，Filter.Values的上限为5。参数不支持同时指定InstanceIds和Filters。
        # ProjectId - String - 是否必填：否 -（过滤条件）按照项目ID过滤。
        # AccessRegion - String - 是否必填：否 - （过滤条件）按照接入地域过滤。
        # RealServerRegion - String - 是否必填：否 - （过滤条件）按照源站地域过滤。
        # GroupId - String - 是否必填：否 - （过滤条件）按照通道组ID过滤。
        # @type Filters: Array
        # @param ProxyIds: （新参数，替代InstanceIds）按照一个或者多个实例ID查询。每次请求的实例的上限为100。参数不支持同时指定InstanceIds和Filters。
        # @type ProxyIds: Array
        # @param TagSet: 标签列表，当存在该字段时，拉取对应标签下的资源列表。
        # 最多支持5个标签，当存在两个或两个以上的标签时，满足其中任意一个标签时，通道会被拉取出来。
        # @type TagSet: Array
        # @param Independent: 当该字段为1时，仅拉取非通道组的通道，
        # 当该字段为0时，仅拉取通道组的通道，
        # 不存在该字段时，拉取所有通道，包括独立通道和通道组通道。
        # @type Independent: Integer

        attr_accessor :InstanceIds, :Offset, :Limit, :Filters, :ProxyIds, :TagSet, :Independent
        
        def initialize(instanceids=nil, offset=nil, limit=nil, filters=nil, proxyids=nil, tagset=nil, independent=nil)
          @InstanceIds = instanceids
          @Offset = offset
          @Limit = limit
          @Filters = filters
          @ProxyIds = proxyids
          @TagSet = tagset
          @Independent = independent
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @Filters = params['Filters']
          @ProxyIds = params['ProxyIds']
          @TagSet = params['TagSet']
          @Independent = params['Independent']
        end
      end

      # DescribeProxies返回参数结构体
      class DescribeProxiesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 通道个数。
        # @type TotalCount: Integer
        # @param InstanceSet: （旧参数，请切换到ProxySet）通道实例信息列表。
        # @type InstanceSet: Array
        # @param ProxySet: （新参数）通道实例信息列表。
        # @type ProxySet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :InstanceSet, :ProxySet, :RequestId
        
        def initialize(totalcount=nil, instanceset=nil, proxyset=nil, requestid=nil)
          @TotalCount = totalcount
          @InstanceSet = instanceset
          @ProxySet = proxyset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @InstanceSet = params['InstanceSet']
          @ProxySet = params['ProxySet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProxiesStatus请求参数结构体
      class DescribeProxiesStatusRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: （旧参数，请切换到ProxyIds）通道ID列表。
        # @type InstanceIds: Array
        # @param ProxyIds: （新参数）通道ID列表。
        # @type ProxyIds: Array

        attr_accessor :InstanceIds, :ProxyIds
        
        def initialize(instanceids=nil, proxyids=nil)
          @InstanceIds = instanceids
          @ProxyIds = proxyids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @ProxyIds = params['ProxyIds']
        end
      end

      # DescribeProxiesStatus返回参数结构体
      class DescribeProxiesStatusResponse < TencentCloud::Common::AbstractModel
        # @param InstanceStatusSet: 通道状态列表。
        # @type InstanceStatusSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InstanceStatusSet, :RequestId
        
        def initialize(instancestatusset=nil, requestid=nil)
          @InstanceStatusSet = instancestatusset
          @RequestId = requestid
        end

        def deserialize(params)
          @InstanceStatusSet = params['InstanceStatusSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProxyAndStatisticsListeners请求参数结构体
      class DescribeProxyAndStatisticsListenersRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer

        attr_accessor :ProjectId
        
        def initialize(projectid=nil)
          @ProjectId = projectid
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
        end
      end

      # DescribeProxyAndStatisticsListeners返回参数结构体
      class DescribeProxyAndStatisticsListenersResponse < TencentCloud::Common::AbstractModel
        # @param ProxySet: 可以统计的通道信息
        # @type ProxySet: Array
        # @param TotalCount: 通道数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxySet, :TotalCount, :RequestId
        
        def initialize(proxyset=nil, totalcount=nil, requestid=nil)
          @ProxySet = proxyset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @ProxySet = params['ProxySet']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProxyDetail请求参数结构体
      class DescribeProxyDetailRequest < TencentCloud::Common::AbstractModel
        # @param ProxyId: 需查询的通道ID。
        # @type ProxyId: String

        attr_accessor :ProxyId
        
        def initialize(proxyid=nil)
          @ProxyId = proxyid
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
        end
      end

      # DescribeProxyDetail返回参数结构体
      class DescribeProxyDetailResponse < TencentCloud::Common::AbstractModel
        # @param ProxyDetail: 通道详情信息。
        # @type ProxyDetail: :class:`Tencentcloud::Gaap.v20180529.models.ProxyInfo`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxyDetail, :RequestId
        
        def initialize(proxydetail=nil, requestid=nil)
          @ProxyDetail = proxydetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProxyDetail'].nil?
            @ProxyDetail = ProxyInfo.new.deserialize(params[ProxyDetail])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProxyGroupDetails请求参数结构体
      class DescribeProxyGroupDetailsRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 通道组ID。
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # DescribeProxyGroupDetails返回参数结构体
      class DescribeProxyGroupDetailsResponse < TencentCloud::Common::AbstractModel
        # @param ProxyGroupDetail: 通道组详细信息。
        # @type ProxyGroupDetail: :class:`Tencentcloud::Gaap.v20180529.models.ProxyGroupDetail`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxyGroupDetail, :RequestId
        
        def initialize(proxygroupdetail=nil, requestid=nil)
          @ProxyGroupDetail = proxygroupdetail
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProxyGroupDetail'].nil?
            @ProxyGroupDetail = ProxyGroupDetail.new.deserialize(params[ProxyGroupDetail])
          end
          @RequestId = params['RequestId']
        end
      end

      # DescribeProxyGroupList请求参数结构体
      class DescribeProxyGroupListRequest < TencentCloud::Common::AbstractModel
        # @param Offset: 偏移量，默认值为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认值为20，最大值为100。
        # @type Limit: Integer
        # @param ProjectId: 项目ID。取值范围：
        # -1，该用户下所有项目
        # 0，默认项目
        # 其他值，指定的项目
        # @type ProjectId: Integer
        # @param TagSet: 标签列表，当存在该字段时，拉取对应标签下的资源列表。
        # 最多支持5个标签，当存在两个或两个以上的标签时，满足其中任意一个标签时，该通道组会被拉取出来。
        # @type TagSet: Array
        # @param Filters: 过滤条件。
        # 每次请求的Filter.Values的上限为5。
        # RealServerRegion - String - 是否必填：否 -（过滤条件）按照源站地域过滤，可参考DescribeDestRegions接口返回结果中的RegionId。
        # @type Filters: Array

        attr_accessor :Offset, :Limit, :ProjectId, :TagSet, :Filters
        
        def initialize(offset=nil, limit=nil, projectid=nil, tagset=nil, filters=nil)
          @Offset = offset
          @Limit = limit
          @ProjectId = projectid
          @TagSet = tagset
          @Filters = filters
        end

        def deserialize(params)
          @Offset = params['Offset']
          @Limit = params['Limit']
          @ProjectId = params['ProjectId']
          @TagSet = params['TagSet']
          @Filters = params['Filters']
        end
      end

      # DescribeProxyGroupList返回参数结构体
      class DescribeProxyGroupListResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 通道组总数。
        # @type TotalCount: Integer
        # @param ProxyGroupList: 通道组列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyGroupList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ProxyGroupList, :RequestId
        
        def initialize(totalcount=nil, proxygrouplist=nil, requestid=nil)
          @TotalCount = totalcount
          @ProxyGroupList = proxygrouplist
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ProxyGroupList = params['ProxyGroupList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProxyGroupStatistics请求参数结构体
      class DescribeProxyGroupStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 通道组ID
        # @type GroupId: String
        # @param StartTime: 起始时间
        # @type StartTime: String
        # @param EndTime: 结束时间
        # @type EndTime: String
        # @param MetricNames: 统计指标名称列表，支持: 入带宽:InBandwidth, 出带宽:OutBandwidth, 并发:Concurrent, 入包量:InPackets, 出包量:OutPackets
        # @type MetricNames: Array
        # @param Granularity: 监控粒度，目前支持60，300，3600，86400，单位：秒。
        # 当时间范围不超过1天，支持最小粒度60秒；
        # 当时间范围不超过7天，支持最小粒度3600秒；
        # 当时间范围不超过30天，支持最小粒度86400秒。
        # @type Granularity: Integer

        attr_accessor :GroupId, :StartTime, :EndTime, :MetricNames, :Granularity
        
        def initialize(groupid=nil, starttime=nil, endtime=nil, metricnames=nil, granularity=nil)
          @GroupId = groupid
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @Granularity = granularity
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricNames = params['MetricNames']
          @Granularity = params['Granularity']
        end
      end

      # DescribeProxyGroupStatistics返回参数结构体
      class DescribeProxyGroupStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param StatisticsData: 通道组统计数据
        # @type StatisticsData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StatisticsData, :RequestId
        
        def initialize(statisticsdata=nil, requestid=nil)
          @StatisticsData = statisticsdata
          @RequestId = requestid
        end

        def deserialize(params)
          @StatisticsData = params['StatisticsData']
          @RequestId = params['RequestId']
        end
      end

      # DescribeProxyStatistics请求参数结构体
      class DescribeProxyStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param ProxyId: 通道ID
        # @type ProxyId: String
        # @param StartTime: 起始时间(2019-03-25 12:00:00)
        # @type StartTime: String
        # @param EndTime: 结束时间(2019-03-25 12:00:00)
        # @type EndTime: String
        # @param MetricNames: 统计指标名称列表，支持: 入带宽:InBandwidth, 出带宽:OutBandwidth, 并发:Concurrent, 入包量:InPackets, 出包量:OutPackets, 丢包率:PacketLoss, 延迟:Latency，http请求量：HttpQPS, Https请求量：HttpsQPS
        # @type MetricNames: Array
        # @param Granularity: 监控粒度，目前支持60，300，3600，86400，单位：秒。
        # 当时间范围不超过3天，支持最小粒度60秒；
        # 当时间范围不超过7天，支持最小粒度300秒；
        # 当时间范围不超过30天，支持最小粒度3600秒。
        # @type Granularity: Integer

        attr_accessor :ProxyId, :StartTime, :EndTime, :MetricNames, :Granularity
        
        def initialize(proxyid=nil, starttime=nil, endtime=nil, metricnames=nil, granularity=nil)
          @ProxyId = proxyid
          @StartTime = starttime
          @EndTime = endtime
          @MetricNames = metricnames
          @Granularity = granularity
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @MetricNames = params['MetricNames']
          @Granularity = params['Granularity']
        end
      end

      # DescribeProxyStatistics返回参数结构体
      class DescribeProxyStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param StatisticsData: 通道统计数据
        # @type StatisticsData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StatisticsData, :RequestId
        
        def initialize(statisticsdata=nil, requestid=nil)
          @StatisticsData = statisticsdata
          @RequestId = requestid
        end

        def deserialize(params)
          @StatisticsData = params['StatisticsData']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRealServerStatistics请求参数结构体
      class DescribeRealServerStatisticsRequest < TencentCloud::Common::AbstractModel
        # @param RealServerId: 源站ID
        # @type RealServerId: String
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param RuleId: L7层规则ID
        # @type RuleId: String
        # @param WithinTime: 统计时长，单位：小时。仅支持最近1,3,6,12,24小时的统计查询
        # @type WithinTime: Integer
        # @param StartTime: 统计开始时间(2020-08-19 00:00:00)
        # @type StartTime: String
        # @param EndTime: 统计结束时间(2020-08-19 23:59:59)
        # @type EndTime: String
        # @param Granularity: 统计的数据粒度，单位：秒，仅支持1分钟-60和5分钟-300粒度
        # @type Granularity: Integer

        attr_accessor :RealServerId, :ListenerId, :RuleId, :WithinTime, :StartTime, :EndTime, :Granularity
        
        def initialize(realserverid=nil, listenerid=nil, ruleid=nil, withintime=nil, starttime=nil, endtime=nil, granularity=nil)
          @RealServerId = realserverid
          @ListenerId = listenerid
          @RuleId = ruleid
          @WithinTime = withintime
          @StartTime = starttime
          @EndTime = endtime
          @Granularity = granularity
        end

        def deserialize(params)
          @RealServerId = params['RealServerId']
          @ListenerId = params['ListenerId']
          @RuleId = params['RuleId']
          @WithinTime = params['WithinTime']
          @StartTime = params['StartTime']
          @EndTime = params['EndTime']
          @Granularity = params['Granularity']
        end
      end

      # DescribeRealServerStatistics返回参数结构体
      class DescribeRealServerStatisticsResponse < TencentCloud::Common::AbstractModel
        # @param StatisticsData: 指定监听器的源站状态统计数据
        # @type StatisticsData: Array
        # @param RsStatisticsData: 多个源站状态统计数据
        # @type RsStatisticsData: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :StatisticsData, :RsStatisticsData, :RequestId
        
        def initialize(statisticsdata=nil, rsstatisticsdata=nil, requestid=nil)
          @StatisticsData = statisticsdata
          @RsStatisticsData = rsstatisticsdata
          @RequestId = requestid
        end

        def deserialize(params)
          @StatisticsData = params['StatisticsData']
          @RsStatisticsData = params['RsStatisticsData']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRealServers请求参数结构体
      class DescribeRealServersRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 查询源站的所属项目ID，-1表示所有项目
        # @type ProjectId: Integer
        # @param SearchValue: 需要查询的源站IP或域名，支持模糊匹配
        # @type SearchValue: String
        # @param Offset: 偏移量，默认值是0
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20个，最大值为50个
        # @type Limit: Integer
        # @param TagSet: 标签列表，当存在该字段时，拉取对应标签下的资源列表。
        # 最多支持5个标签，当存在两个或两个以上的标签时，满足其中任意一个标签时，源站会被拉取出来。
        # @type TagSet: Array
        # @param Filters: 过滤条件。filter的name取值(RealServerName,RealServerIP)
        # @type Filters: Array

        attr_accessor :ProjectId, :SearchValue, :Offset, :Limit, :TagSet, :Filters
        
        def initialize(projectid=nil, searchvalue=nil, offset=nil, limit=nil, tagset=nil, filters=nil)
          @ProjectId = projectid
          @SearchValue = searchvalue
          @Offset = offset
          @Limit = limit
          @TagSet = tagset
          @Filters = filters
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @SearchValue = params['SearchValue']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @TagSet = params['TagSet']
          @Filters = params['Filters']
        end
      end

      # DescribeRealServers返回参数结构体
      class DescribeRealServersResponse < TencentCloud::Common::AbstractModel
        # @param RealServerSet: 源站信息列表
        # @type RealServerSet: Array
        # @param TotalCount: 查询得到的源站数量
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RealServerSet, :TotalCount, :RequestId
        
        def initialize(realserverset=nil, totalcount=nil, requestid=nil)
          @RealServerSet = realserverset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @RealServerSet = params['RealServerSet']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRealServersStatus请求参数结构体
      class DescribeRealServersStatusRequest < TencentCloud::Common::AbstractModel
        # @param RealServerIds: 源站ID列表
        # @type RealServerIds: Array

        attr_accessor :RealServerIds
        
        def initialize(realserverids=nil)
          @RealServerIds = realserverids
        end

        def deserialize(params)
          @RealServerIds = params['RealServerIds']
        end
      end

      # DescribeRealServersStatus返回参数结构体
      class DescribeRealServersStatusResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回源站查询结果的个数
        # @type TotalCount: Integer
        # @param RealServerStatusSet: 源站被绑定状态列表
        # @type RealServerStatusSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RealServerStatusSet, :RequestId
        
        def initialize(totalcount=nil, realserverstatusset=nil, requestid=nil)
          @TotalCount = totalcount
          @RealServerStatusSet = realserverstatusset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RealServerStatusSet = params['RealServerStatusSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRegionAndPrice请求参数结构体
      class DescribeRegionAndPriceRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeRegionAndPrice返回参数结构体
      class DescribeRegionAndPriceResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 源站区域总数
        # @type TotalCount: Integer
        # @param DestRegionSet: 源站区域详情列表
        # @type DestRegionSet: Array
        # @param BandwidthUnitPrice: 通道带宽费用梯度价格
        # @type BandwidthUnitPrice: Array
        # @param Currency: 带宽价格货币类型：
        # CNY 人民币
        # USD 美元
        # @type Currency: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :DestRegionSet, :BandwidthUnitPrice, :Currency, :RequestId
        
        def initialize(totalcount=nil, destregionset=nil, bandwidthunitprice=nil, currency=nil, requestid=nil)
          @TotalCount = totalcount
          @DestRegionSet = destregionset
          @BandwidthUnitPrice = bandwidthunitprice
          @Currency = currency
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @DestRegionSet = params['DestRegionSet']
          @BandwidthUnitPrice = params['BandwidthUnitPrice']
          @Currency = params['Currency']
          @RequestId = params['RequestId']
        end
      end

      # DescribeResourcesByTag请求参数结构体
      class DescribeResourcesByTagRequest < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键。
        # @type TagKey: String
        # @param TagValue: 标签值。
        # @type TagValue: String
        # @param ResourceType: 资源类型，其中：
        # Proxy表示通道；
        # ProxyGroup表示通道组；
        # RealServer表示源站。
        # 不指定该字段则查询该标签下所有资源。
        # @type ResourceType: String

        attr_accessor :TagKey, :TagValue, :ResourceType
        
        def initialize(tagkey=nil, tagvalue=nil, resourcetype=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
          @ResourceType = resourcetype
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
          @ResourceType = params['ResourceType']
        end
      end

      # DescribeResourcesByTag返回参数结构体
      class DescribeResourcesByTagResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 资源总数
        # @type TotalCount: Integer
        # @param ResourceSet: 标签对应的资源列表
        # @type ResourceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ResourceSet, :RequestId
        
        def initialize(totalcount=nil, resourceset=nil, requestid=nil)
          @TotalCount = totalcount
          @ResourceSet = resourceset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ResourceSet = params['ResourceSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRuleRealServers请求参数结构体
      class DescribeRuleRealServersRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 转发规则ID
        # @type RuleId: String
        # @param Offset: 偏移量，默认为0。
        # @type Offset: Integer
        # @param Limit: 返回数量，默认为20，最大值为1000。
        # @type Limit: Integer

        attr_accessor :RuleId, :Offset, :Limit
        
        def initialize(ruleid=nil, offset=nil, limit=nil)
          @RuleId = ruleid
          @Offset = offset
          @Limit = limit
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @Offset = params['Offset']
          @Limit = params['Limit']
        end
      end

      # DescribeRuleRealServers返回参数结构体
      class DescribeRuleRealServersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 可绑定的源站个数
        # @type TotalCount: Integer
        # @param RealServerSet: 可绑定的源站信息列表
        # @type RealServerSet: Array
        # @param BindRealServerTotalCount: 已绑定的源站个数
        # @type BindRealServerTotalCount: Integer
        # @param BindRealServerSet: 已绑定的源站信息列表
        # @type BindRealServerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RealServerSet, :BindRealServerTotalCount, :BindRealServerSet, :RequestId
        
        def initialize(totalcount=nil, realserverset=nil, bindrealservertotalcount=nil, bindrealserverset=nil, requestid=nil)
          @TotalCount = totalcount
          @RealServerSet = realserverset
          @BindRealServerTotalCount = bindrealservertotalcount
          @BindRealServerSet = bindrealserverset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RealServerSet = params['RealServerSet']
          @BindRealServerTotalCount = params['BindRealServerTotalCount']
          @BindRealServerSet = params['BindRealServerSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRulesByRuleIds请求参数结构体
      class DescribeRulesByRuleIdsRequest < TencentCloud::Common::AbstractModel
        # @param RuleIds: 规则ID列表。最多支持10个规则。
        # @type RuleIds: Array

        attr_accessor :RuleIds
        
        def initialize(ruleids=nil)
          @RuleIds = ruleids
        end

        def deserialize(params)
          @RuleIds = params['RuleIds']
        end
      end

      # DescribeRulesByRuleIds返回参数结构体
      class DescribeRulesByRuleIdsResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的规则总个数。
        # @type TotalCount: Integer
        # @param RuleSet: 返回的规则列表。
        # @type RuleSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :RuleSet, :RequestId
        
        def initialize(totalcount=nil, ruleset=nil, requestid=nil)
          @TotalCount = totalcount
          @RuleSet = ruleset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @RuleSet = params['RuleSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeRules请求参数结构体
      class DescribeRulesRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 7层监听器Id。
        # @type ListenerId: String

        attr_accessor :ListenerId
        
        def initialize(listenerid=nil)
          @ListenerId = listenerid
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
        end
      end

      # DescribeRules返回参数结构体
      class DescribeRulesResponse < TencentCloud::Common::AbstractModel
        # @param DomainRuleSet: 按照域名分类的规则信息列表
        # @type DomainRuleSet: Array
        # @param TotalCount: 该监听器下的域名总数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :DomainRuleSet, :TotalCount, :RequestId
        
        def initialize(domainruleset=nil, totalcount=nil, requestid=nil)
          @DomainRuleSet = domainruleset
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          @DomainRuleSet = params['DomainRuleSet']
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityPolicyDetail请求参数结构体
      class DescribeSecurityPolicyDetailRequest < TencentCloud::Common::AbstractModel
        # @param PolicyId: 安全策略ID
        # @type PolicyId: String

        attr_accessor :PolicyId
        
        def initialize(policyid=nil)
          @PolicyId = policyid
        end

        def deserialize(params)
          @PolicyId = params['PolicyId']
        end
      end

      # DescribeSecurityPolicyDetail返回参数结构体
      class DescribeSecurityPolicyDetailResponse < TencentCloud::Common::AbstractModel
        # @param ProxyId: 通道ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyId: String
        # @param Status: 安全策略状态：
        # BOUND，已开启安全策略
        # UNBIND，已关闭安全策略
        # BINDING，安全策略开启中
        # UNBINDING，安全策略关闭中。
        # @type Status: String
        # @param DefaultAction: 默认策略：ACCEPT或DROP。
        # @type DefaultAction: String
        # @param PolicyId: 策略ID
        # @type PolicyId: String
        # @param RuleList: 规则列表
        # @type RuleList: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxyId, :Status, :DefaultAction, :PolicyId, :RuleList, :RequestId
        
        def initialize(proxyid=nil, status=nil, defaultaction=nil, policyid=nil, rulelist=nil, requestid=nil)
          @ProxyId = proxyid
          @Status = status
          @DefaultAction = defaultaction
          @PolicyId = policyid
          @RuleList = rulelist
          @RequestId = requestid
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @Status = params['Status']
          @DefaultAction = params['DefaultAction']
          @PolicyId = params['PolicyId']
          @RuleList = params['RuleList']
          @RequestId = params['RequestId']
        end
      end

      # DescribeSecurityRules请求参数结构体
      class DescribeSecurityRulesRequest < TencentCloud::Common::AbstractModel
        # @param SecurityRuleIds: 安全规则ID列表。总数不能超过20个。
        # @type SecurityRuleIds: Array

        attr_accessor :SecurityRuleIds
        
        def initialize(securityruleids=nil)
          @SecurityRuleIds = securityruleids
        end

        def deserialize(params)
          @SecurityRuleIds = params['SecurityRuleIds']
        end
      end

      # DescribeSecurityRules返回参数结构体
      class DescribeSecurityRulesResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 返回的安全规则详情总数。
        # @type TotalCount: Integer
        # @param SecurityRuleSet: 返回的安全规则详情列表。
        # @type SecurityRuleSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :SecurityRuleSet, :RequestId
        
        def initialize(totalcount=nil, securityruleset=nil, requestid=nil)
          @TotalCount = totalcount
          @SecurityRuleSet = securityruleset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @SecurityRuleSet = params['SecurityRuleSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeTCPListeners请求参数结构体
      class DescribeTCPListenersRequest < TencentCloud::Common::AbstractModel
        # @param ProxyId: 过滤条件，根据通道ID进行拉取，ProxyId/GroupId/ListenerId必须设置一个，但ProxyId和GroupId不能同时设置。
        # @type ProxyId: String
        # @param ListenerId: 过滤条件，根据监听器ID精确查询。
        # 当设置了ProxyId时，会检查该监听器是否归属于该通道。
        # 当设置了GroupId时，会检查该监听器是否归属于该通道组。
        # @type ListenerId: String
        # @param ListenerName: 过滤条件，根据监听器名称精确查询
        # @type ListenerName: String
        # @param Port: 过滤条件，根据监听器端口精确查询
        # @type Port: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 限制数量，默认为20
        # @type Limit: Integer
        # @param GroupId: 过滤条件，根据通道组ID进行拉取，ProxyId/GroupId/ListenerId必须设置一个，但ProxyId和GroupId不能同时设置。
        # @type GroupId: String
        # @param SearchValue: 过滤条件，支持按照端口或监听器名称进行模糊查询，该参数不能与ListenerName和Port同时使用
        # @type SearchValue: String

        attr_accessor :ProxyId, :ListenerId, :ListenerName, :Port, :Offset, :Limit, :GroupId, :SearchValue
        
        def initialize(proxyid=nil, listenerid=nil, listenername=nil, port=nil, offset=nil, limit=nil, groupid=nil, searchvalue=nil)
          @ProxyId = proxyid
          @ListenerId = listenerid
          @ListenerName = listenername
          @Port = port
          @Offset = offset
          @Limit = limit
          @GroupId = groupid
          @SearchValue = searchvalue
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Port = params['Port']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @GroupId = params['GroupId']
          @SearchValue = params['SearchValue']
        end
      end

      # DescribeTCPListeners返回参数结构体
      class DescribeTCPListenersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 满足条件的监听器总个数
        # @type TotalCount: Integer
        # @param ListenerSet: TCP监听器列表
        # @type ListenerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ListenerSet, :RequestId
        
        def initialize(totalcount=nil, listenerset=nil, requestid=nil)
          @TotalCount = totalcount
          @ListenerSet = listenerset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ListenerSet = params['ListenerSet']
          @RequestId = params['RequestId']
        end
      end

      # DescribeUDPListeners请求参数结构体
      class DescribeUDPListenersRequest < TencentCloud::Common::AbstractModel
        # @param ProxyId: 过滤条件，根据通道ID进行拉取，ProxyId/GroupId/ListenerId必须设置一个，但ProxyId和GroupId不能同时设置。
        # @type ProxyId: String
        # @param ListenerId: 过滤条件，根据监听器ID精确查询。
        # 当设置了ProxyId时，会检查该监听器是否归属于该通道。
        # 当设置了GroupId时，会检查该监听器是否归属于该通道组。
        # @type ListenerId: String
        # @param ListenerName: 过滤条件，根据监听器名称精确查询
        # @type ListenerName: String
        # @param Port: 过滤条件，根据监听器端口精确查询
        # @type Port: Integer
        # @param Offset: 偏移量，默认为0
        # @type Offset: Integer
        # @param Limit: 限制数量，默认为20
        # @type Limit: Integer
        # @param GroupId: 过滤条件，根据通道组ID进行拉取，ProxyId/GroupId/ListenerId必须设置一个，但ProxyId和GroupId不能同时设置。
        # @type GroupId: String
        # @param SearchValue: 过滤条件，支持按照端口或监听器名称进行模糊查询，该参数不能与ListenerName和Port同时使用
        # @type SearchValue: String

        attr_accessor :ProxyId, :ListenerId, :ListenerName, :Port, :Offset, :Limit, :GroupId, :SearchValue
        
        def initialize(proxyid=nil, listenerid=nil, listenername=nil, port=nil, offset=nil, limit=nil, groupid=nil, searchvalue=nil)
          @ProxyId = proxyid
          @ListenerId = listenerid
          @ListenerName = listenername
          @Port = port
          @Offset = offset
          @Limit = limit
          @GroupId = groupid
          @SearchValue = searchvalue
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Port = params['Port']
          @Offset = params['Offset']
          @Limit = params['Limit']
          @GroupId = params['GroupId']
          @SearchValue = params['SearchValue']
        end
      end

      # DescribeUDPListeners返回参数结构体
      class DescribeUDPListenersResponse < TencentCloud::Common::AbstractModel
        # @param TotalCount: 监听器个数
        # @type TotalCount: Integer
        # @param ListenerSet: UDP监听器列表
        # @type ListenerSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TotalCount, :ListenerSet, :RequestId
        
        def initialize(totalcount=nil, listenerset=nil, requestid=nil)
          @TotalCount = totalcount
          @ListenerSet = listenerset
          @RequestId = requestid
        end

        def deserialize(params)
          @TotalCount = params['TotalCount']
          @ListenerSet = params['ListenerSet']
          @RequestId = params['RequestId']
        end
      end

      # DestroyProxies请求参数结构体
      class DestroyProxiesRequest < TencentCloud::Common::AbstractModel
        # @param Force: 强制删除标识。
        # 1，强制删除该通道列表，无论是否已经绑定了源站；
        # 0，如果已绑定了源站，则无法删除。
        # 删除多通道时，如果该标识为0，只有所有的通道都没有绑定源站，才允许删除。
        # @type Force: Integer
        # @param InstanceIds: （旧参数，请切换到ProxyIds）通道实例ID列表。
        # @type InstanceIds: Array
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # 更多详细信息请参阅：如何保证幂等性。
        # @type ClientToken: String
        # @param ProxyIds: （新参数）通道实例ID列表。
        # @type ProxyIds: Array

        attr_accessor :Force, :InstanceIds, :ClientToken, :ProxyIds
        
        def initialize(force=nil, instanceids=nil, clienttoken=nil, proxyids=nil)
          @Force = force
          @InstanceIds = instanceids
          @ClientToken = clienttoken
          @ProxyIds = proxyids
        end

        def deserialize(params)
          @Force = params['Force']
          @InstanceIds = params['InstanceIds']
          @ClientToken = params['ClientToken']
          @ProxyIds = params['ProxyIds']
        end
      end

      # DestroyProxies返回参数结构体
      class DestroyProxiesResponse < TencentCloud::Common::AbstractModel
        # @param InvalidStatusInstanceSet: 处于不可销毁状态下的通道实例ID列表。
        # @type InvalidStatusInstanceSet: Array
        # @param OperationFailedInstanceSet: 销毁操作失败的通道实例ID列表。
        # @type OperationFailedInstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InvalidStatusInstanceSet, :OperationFailedInstanceSet, :RequestId
        
        def initialize(invalidstatusinstanceset=nil, operationfailedinstanceset=nil, requestid=nil)
          @InvalidStatusInstanceSet = invalidstatusinstanceset
          @OperationFailedInstanceSet = operationfailedinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @InvalidStatusInstanceSet = params['InvalidStatusInstanceSet']
          @OperationFailedInstanceSet = params['OperationFailedInstanceSet']
          @RequestId = params['RequestId']
        end
      end

      # 域名解析就近访问配置详情
      class DomainAccessRegionDict < TencentCloud::Common::AbstractModel
        # @param NationCountryInnerList: 就近接入区域
        # @type NationCountryInnerList: Array
        # @param ProxyList: 加速区域通道列表
        # @type ProxyList: Array
        # @param RegionId: 加速区域ID
        # @type RegionId: String
        # @param GeographicalZoneInnerCode: 加速区域内部编码
        # @type GeographicalZoneInnerCode: String
        # @param ContinentInnerCode: 加速区域所属大洲内部编码
        # @type ContinentInnerCode: String
        # @param RegionName: 加速区域别名
        # @type RegionName: String

        attr_accessor :NationCountryInnerList, :ProxyList, :RegionId, :GeographicalZoneInnerCode, :ContinentInnerCode, :RegionName
        
        def initialize(nationcountryinnerlist=nil, proxylist=nil, regionid=nil, geographicalzoneinnercode=nil, continentinnercode=nil, regionname=nil)
          @NationCountryInnerList = nationcountryinnerlist
          @ProxyList = proxylist
          @RegionId = regionid
          @GeographicalZoneInnerCode = geographicalzoneinnercode
          @ContinentInnerCode = continentinnercode
          @RegionName = regionname
        end

        def deserialize(params)
          @NationCountryInnerList = params['NationCountryInnerList']
          @ProxyList = params['ProxyList']
          @RegionId = params['RegionId']
          @GeographicalZoneInnerCode = params['GeographicalZoneInnerCode']
          @ContinentInnerCode = params['ContinentInnerCode']
          @RegionName = params['RegionName']
        end
      end

      # 域名的定制错误响应配置
      class DomainErrorPageInfo < TencentCloud::Common::AbstractModel
        # @param ErrorPageId: 错误定制响应的配置ID
        # @type ErrorPageId: String
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param Domain: 域名
        # @type Domain: String
        # @param ErrorNos: 原始错误码
        # @type ErrorNos: Array
        # @param NewErrorNo: 新的错误码
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type NewErrorNo: Integer
        # @param ClearHeaders: 需要清理的响应头
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClearHeaders: Array
        # @param SetHeaders: 需要设置的响应头
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SetHeaders: Array
        # @param Body: 设置的响应体(不包括 HTTP头)
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Body: String
        # @param Status: 规则状态,0为成功
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Status: Integer

        attr_accessor :ErrorPageId, :ListenerId, :Domain, :ErrorNos, :NewErrorNo, :ClearHeaders, :SetHeaders, :Body, :Status
        
        def initialize(errorpageid=nil, listenerid=nil, domain=nil, errornos=nil, newerrorno=nil, clearheaders=nil, setheaders=nil, body=nil, status=nil)
          @ErrorPageId = errorpageid
          @ListenerId = listenerid
          @Domain = domain
          @ErrorNos = errornos
          @NewErrorNo = newerrorno
          @ClearHeaders = clearheaders
          @SetHeaders = setheaders
          @Body = body
          @Status = status
        end

        def deserialize(params)
          @ErrorPageId = params['ErrorPageId']
          @ListenerId = params['ListenerId']
          @Domain = params['Domain']
          @ErrorNos = params['ErrorNos']
          @NewErrorNo = params['NewErrorNo']
          @ClearHeaders = params['ClearHeaders']
          @SetHeaders = params['SetHeaders']
          @Body = params['Body']
          @Status = params['Status']
        end
      end

      # 按照域名分类的7层监听器转发规则信息
      class DomainRuleSet < TencentCloud::Common::AbstractModel
        # @param Domain: 转发规则域名。
        # @type Domain: String
        # @param RuleSet: 该域名对应的转发规则列表。
        # @type RuleSet: Array
        # @param CertificateId: 该域名对应的服务器证书ID，值为default时，表示使用默认证书（监听器配置的证书）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateId: String
        # @param CertificateAlias: 该域名对应服务器证书名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateAlias: String
        # @param ClientCertificateId: 该域名对应的客户端证书ID，值为default时，表示使用默认证书（监听器配置的证书）。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientCertificateId: String
        # @param ClientCertificateAlias: 该域名对应客户端证书名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientCertificateAlias: String
        # @param BasicAuthConfId: 该域名对应基础认证配置ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BasicAuthConfId: String
        # @param BasicAuth: 基础认证开关，其中：
        # 0，表示未开启；
        # 1，表示已开启。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BasicAuth: Integer
        # @param BasicAuthConfAlias: 该域名对应基础认证配置名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BasicAuthConfAlias: String
        # @param RealServerCertificateId: 该域名对应源站认证证书ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealServerCertificateId: String
        # @param RealServerAuth: 源站认证开关，其中：
        # 0，表示未开启；
        # 1，表示已开启。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealServerAuth: Integer
        # @param RealServerCertificateAlias: 该域名对应源站认证证书名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealServerCertificateAlias: String
        # @param GaapCertificateId: 该域名对应通道认证证书ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GaapCertificateId: String
        # @param GaapAuth: 通道认证开关，其中：
        # 0，表示未开启；
        # 1，表示已开启。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GaapAuth: Integer
        # @param GaapCertificateAlias: 该域名对应通道认证证书名称。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GaapCertificateAlias: String
        # @param RealServerCertificateDomain: 源站认证域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealServerCertificateDomain: String
        # @param PolyClientCertificateAliasInfo: 多客户端证书时，返回多个证书的id和别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolyClientCertificateAliasInfo: Array
        # @param PolyRealServerCertificateAliasInfo: 多源站证书时，返回多个证书的id和别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolyRealServerCertificateAliasInfo: Array
        # @param DomainStatus: 域名的状态。
        # 0表示运行中，
        # 1表示变更中，
        # 2表示删除中。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DomainStatus: Integer

        attr_accessor :Domain, :RuleSet, :CertificateId, :CertificateAlias, :ClientCertificateId, :ClientCertificateAlias, :BasicAuthConfId, :BasicAuth, :BasicAuthConfAlias, :RealServerCertificateId, :RealServerAuth, :RealServerCertificateAlias, :GaapCertificateId, :GaapAuth, :GaapCertificateAlias, :RealServerCertificateDomain, :PolyClientCertificateAliasInfo, :PolyRealServerCertificateAliasInfo, :DomainStatus
        
        def initialize(domain=nil, ruleset=nil, certificateid=nil, certificatealias=nil, clientcertificateid=nil, clientcertificatealias=nil, basicauthconfid=nil, basicauth=nil, basicauthconfalias=nil, realservercertificateid=nil, realserverauth=nil, realservercertificatealias=nil, gaapcertificateid=nil, gaapauth=nil, gaapcertificatealias=nil, realservercertificatedomain=nil, polyclientcertificatealiasinfo=nil, polyrealservercertificatealiasinfo=nil, domainstatus=nil)
          @Domain = domain
          @RuleSet = ruleset
          @CertificateId = certificateid
          @CertificateAlias = certificatealias
          @ClientCertificateId = clientcertificateid
          @ClientCertificateAlias = clientcertificatealias
          @BasicAuthConfId = basicauthconfid
          @BasicAuth = basicauth
          @BasicAuthConfAlias = basicauthconfalias
          @RealServerCertificateId = realservercertificateid
          @RealServerAuth = realserverauth
          @RealServerCertificateAlias = realservercertificatealias
          @GaapCertificateId = gaapcertificateid
          @GaapAuth = gaapauth
          @GaapCertificateAlias = gaapcertificatealias
          @RealServerCertificateDomain = realservercertificatedomain
          @PolyClientCertificateAliasInfo = polyclientcertificatealiasinfo
          @PolyRealServerCertificateAliasInfo = polyrealservercertificatealiasinfo
          @DomainStatus = domainstatus
        end

        def deserialize(params)
          @Domain = params['Domain']
          @RuleSet = params['RuleSet']
          @CertificateId = params['CertificateId']
          @CertificateAlias = params['CertificateAlias']
          @ClientCertificateId = params['ClientCertificateId']
          @ClientCertificateAlias = params['ClientCertificateAlias']
          @BasicAuthConfId = params['BasicAuthConfId']
          @BasicAuth = params['BasicAuth']
          @BasicAuthConfAlias = params['BasicAuthConfAlias']
          @RealServerCertificateId = params['RealServerCertificateId']
          @RealServerAuth = params['RealServerAuth']
          @RealServerCertificateAlias = params['RealServerCertificateAlias']
          @GaapCertificateId = params['GaapCertificateId']
          @GaapAuth = params['GaapAuth']
          @GaapCertificateAlias = params['GaapCertificateAlias']
          @RealServerCertificateDomain = params['RealServerCertificateDomain']
          @PolyClientCertificateAliasInfo = params['PolyClientCertificateAliasInfo']
          @PolyRealServerCertificateAliasInfo = params['PolyRealServerCertificateAliasInfo']
          @DomainStatus = params['DomainStatus']
        end
      end

      # 过滤条件
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 过滤条件
        # @type Name: String
        # @param Values: 过滤值
        # @type Values: Array

        attr_accessor :Name, :Values
        
        def initialize(name=nil, values=nil)
          @Name = name
          @Values = values
        end

        def deserialize(params)
          @Name = params['Name']
          @Values = params['Values']
        end
      end

      # 可以显示统计数据的通道组和对应通道信息
      class GroupStatisticsInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 通道组ID
        # @type GroupId: String
        # @param GroupName: 通道组名称
        # @type GroupName: String
        # @param ProxySet: 通道组下通道列表
        # @type ProxySet: Array

        attr_accessor :GroupId, :GroupName, :ProxySet
        
        def initialize(groupid=nil, groupname=nil, proxyset=nil)
          @GroupId = groupid
          @GroupName = groupname
          @ProxySet = proxyset
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @ProxySet = params['ProxySet']
        end
      end

      # HTTP类型监听器信息
      class HTTPListener < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param ListenerName: 监听器名称
        # @type ListenerName: String
        # @param Port: 监听器端口
        # @type Port: Integer
        # @param CreateTime: 监听器创建时间，Unix时间戳
        # @type CreateTime: Integer
        # @param Protocol: 监听器协议， HTTP表示HTTP，HTTPS表示HTTPS，此结构取值HTTP
        # @type Protocol: String
        # @param ListenerStatus: 监听器状态，其中：
        # 0表示运行中；
        # 1表示创建中；
        # 2表示销毁中；
        # 3表示源站调整中；
        # 4表示配置变更中。
        # @type ListenerStatus: Integer

        attr_accessor :ListenerId, :ListenerName, :Port, :CreateTime, :Protocol, :ListenerStatus
        
        def initialize(listenerid=nil, listenername=nil, port=nil, createtime=nil, protocol=nil, listenerstatus=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @Port = port
          @CreateTime = createtime
          @Protocol = protocol
          @ListenerStatus = listenerstatus
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Port = params['Port']
          @CreateTime = params['CreateTime']
          @Protocol = params['Protocol']
          @ListenerStatus = params['ListenerStatus']
        end
      end

      # HTTPS类型监听器信息
      class HTTPSListener < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param ListenerName: 监听器名称
        # @type ListenerName: String
        # @param Port: 监听器端口
        # @type Port: Integer
        # @param Protocol: 监听器协议， HTTP表示HTTP，HTTPS表示HTTPS，此结构取值HTTPS
        # @type Protocol: String
        # @param ListenerStatus: 监听器状态，其中：
        # 0表示运行中；
        # 1表示创建中；
        # 2表示销毁中；
        # 3表示源站调整中；
        # 4表示配置变更中。
        # @type ListenerStatus: Integer
        # @param CertificateId: 监听器服务器SSL证书ID
        # @type CertificateId: String
        # @param ForwardProtocol: 监听器后端转发源站协议
        # @type ForwardProtocol: String
        # @param CreateTime: 监听器创建时间，Unix时间戳
        # @type CreateTime: Integer
        # @param CertificateAlias: 服务器SSL证书的别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CertificateAlias: String
        # @param ClientCertificateId: 监听器客户端CA证书ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientCertificateId: String
        # @param AuthType: 监听器认证方式。其中，
        # 0表示单向认证；
        # 1表示双向认证。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AuthType: Integer
        # @param ClientCertificateAlias: 客户端CA证书别名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientCertificateAlias: String
        # @param PolyClientCertificateAliasInfo: 多客户端CA证书别名信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolyClientCertificateAliasInfo: Array

        attr_accessor :ListenerId, :ListenerName, :Port, :Protocol, :ListenerStatus, :CertificateId, :ForwardProtocol, :CreateTime, :CertificateAlias, :ClientCertificateId, :AuthType, :ClientCertificateAlias, :PolyClientCertificateAliasInfo
        
        def initialize(listenerid=nil, listenername=nil, port=nil, protocol=nil, listenerstatus=nil, certificateid=nil, forwardprotocol=nil, createtime=nil, certificatealias=nil, clientcertificateid=nil, authtype=nil, clientcertificatealias=nil, polyclientcertificatealiasinfo=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @Port = port
          @Protocol = protocol
          @ListenerStatus = listenerstatus
          @CertificateId = certificateid
          @ForwardProtocol = forwardprotocol
          @CreateTime = createtime
          @CertificateAlias = certificatealias
          @ClientCertificateId = clientcertificateid
          @AuthType = authtype
          @ClientCertificateAlias = clientcertificatealias
          @PolyClientCertificateAliasInfo = polyclientcertificatealiasinfo
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Port = params['Port']
          @Protocol = params['Protocol']
          @ListenerStatus = params['ListenerStatus']
          @CertificateId = params['CertificateId']
          @ForwardProtocol = params['ForwardProtocol']
          @CreateTime = params['CreateTime']
          @CertificateAlias = params['CertificateAlias']
          @ClientCertificateId = params['ClientCertificateId']
          @AuthType = params['AuthType']
          @ClientCertificateAlias = params['ClientCertificateAlias']
          @PolyClientCertificateAliasInfo = params['PolyClientCertificateAliasInfo']
        end
      end

      # 描述HTTP的包头参数
      class HttpHeaderParam < TencentCloud::Common::AbstractModel
        # @param HeaderName: HTTP头名
        # @type HeaderName: String
        # @param HeaderValue: HTTP头值
        # @type HeaderValue: String

        attr_accessor :HeaderName, :HeaderValue
        
        def initialize(headername=nil, headervalue=nil)
          @HeaderName = headername
          @HeaderValue = headervalue
        end

        def deserialize(params)
          @HeaderName = params['HeaderName']
          @HeaderValue = params['HeaderValue']
        end
      end

      # InquiryPriceCreateProxy请求参数结构体
      class InquiryPriceCreateProxyRequest < TencentCloud::Common::AbstractModel
        # @param AccessRegion: 加速区域名称。
        # @type AccessRegion: String
        # @param Bandwidth: 通道带宽上限，单位：Mbps。
        # @type Bandwidth: Integer
        # @param DestRegion: （旧参数，请切换到RealServerRegion）源站区域名称。
        # @type DestRegion: String
        # @param Concurrency: （旧参数，请切换到Concurrent）通道并发量上限，表示同时在线的连接数，单位：万。
        # @type Concurrency: Integer
        # @param RealServerRegion: （新参数）源站区域名称。
        # @type RealServerRegion: String
        # @param Concurrent: （新参数）通道并发量上限，表示同时在线的连接数，单位：万。
        # @type Concurrent: Integer
        # @param BillingType: 计费方式，0表示按带宽计费，1表示按流量计费。默认按带宽计费
        # @type BillingType: Integer

        attr_accessor :AccessRegion, :Bandwidth, :DestRegion, :Concurrency, :RealServerRegion, :Concurrent, :BillingType
        
        def initialize(accessregion=nil, bandwidth=nil, destregion=nil, concurrency=nil, realserverregion=nil, concurrent=nil, billingtype=nil)
          @AccessRegion = accessregion
          @Bandwidth = bandwidth
          @DestRegion = destregion
          @Concurrency = concurrency
          @RealServerRegion = realserverregion
          @Concurrent = concurrent
          @BillingType = billingtype
        end

        def deserialize(params)
          @AccessRegion = params['AccessRegion']
          @Bandwidth = params['Bandwidth']
          @DestRegion = params['DestRegion']
          @Concurrency = params['Concurrency']
          @RealServerRegion = params['RealServerRegion']
          @Concurrent = params['Concurrent']
          @BillingType = params['BillingType']
        end
      end

      # InquiryPriceCreateProxy返回参数结构体
      class InquiryPriceCreateProxyResponse < TencentCloud::Common::AbstractModel
        # @param ProxyDailyPrice: 通道基础费用价格，单位：元/天。
        # @type ProxyDailyPrice: Float
        # @param BandwidthUnitPrice: 通道带宽费用梯度价格。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BandwidthUnitPrice: Array
        # @param DiscountProxyDailyPrice: 通道基础费用折扣价格，单位：元/天。
        # @type DiscountProxyDailyPrice: Float
        # @param Currency: 价格使用的货币，支持人民币，美元等。
        # @type Currency: String
        # @param FlowUnitPrice: 通道的流量费用价格，单位: 元/GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FlowUnitPrice: Float
        # @param DiscountFlowUnitPrice: 通道的流量费用折扣价格，单位:元/GB
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DiscountFlowUnitPrice: Float
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProxyDailyPrice, :BandwidthUnitPrice, :DiscountProxyDailyPrice, :Currency, :FlowUnitPrice, :DiscountFlowUnitPrice, :RequestId
        
        def initialize(proxydailyprice=nil, bandwidthunitprice=nil, discountproxydailyprice=nil, currency=nil, flowunitprice=nil, discountflowunitprice=nil, requestid=nil)
          @ProxyDailyPrice = proxydailyprice
          @BandwidthUnitPrice = bandwidthunitprice
          @DiscountProxyDailyPrice = discountproxydailyprice
          @Currency = currency
          @FlowUnitPrice = flowunitprice
          @DiscountFlowUnitPrice = discountflowunitprice
          @RequestId = requestid
        end

        def deserialize(params)
          @ProxyDailyPrice = params['ProxyDailyPrice']
          @BandwidthUnitPrice = params['BandwidthUnitPrice']
          @DiscountProxyDailyPrice = params['DiscountProxyDailyPrice']
          @Currency = params['Currency']
          @FlowUnitPrice = params['FlowUnitPrice']
          @DiscountFlowUnitPrice = params['DiscountFlowUnitPrice']
          @RequestId = params['RequestId']
        end
      end

      # 内部接口使用，返回可以查询统计数据的监听器信息
      class ListenerInfo < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param ListenerName: 监听器名称
        # @type ListenerName: String
        # @param Port: 监听器监听端口
        # @type Port: Integer
        # @param Protocol: 监听器协议类型
        # @type Protocol: String

        attr_accessor :ListenerId, :ListenerName, :Port, :Protocol
        
        def initialize(listenerid=nil, listenername=nil, port=nil, protocol=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @Port = port
          @Protocol = protocol
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Port = params['Port']
          @Protocol = params['Protocol']
        end
      end

      # 单指标的统计数据
      class MetricStatisticsInfo < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名称
        # @type MetricName: String
        # @param MetricData: 指标统计数据
        # @type MetricData: Array

        attr_accessor :MetricName, :MetricData
        
        def initialize(metricname=nil, metricdata=nil)
          @MetricName = metricname
          @MetricData = metricdata
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          @MetricData = params['MetricData']
        end
      end

      # ModifyCertificateAttributes请求参数结构体
      class ModifyCertificateAttributesRequest < TencentCloud::Common::AbstractModel
        # @param CertificateId: 证书ID。
        # @type CertificateId: String
        # @param CertificateAlias: 证书名字。长度不超过50个字符。
        # @type CertificateAlias: String

        attr_accessor :CertificateId, :CertificateAlias
        
        def initialize(certificateid=nil, certificatealias=nil)
          @CertificateId = certificateid
          @CertificateAlias = certificatealias
        end

        def deserialize(params)
          @CertificateId = params['CertificateId']
          @CertificateAlias = params['CertificateAlias']
        end
      end

      # ModifyCertificateAttributes返回参数结构体
      class ModifyCertificateAttributesResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyCertificate请求参数结构体
      class ModifyCertificateRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器实例ID
        # @type ListenerId: String
        # @param Domain: 需要修改证书的域名
        # @type Domain: String
        # @param CertificateId: 新的服务器证书ID。其中：
        # 当CertificateId=default时，表示使用监听器的证书。
        # @type CertificateId: String
        # @param ClientCertificateId: 新的客户端证书ID。其中：
        # 当ClientCertificateId=default时，表示使用监听器的证书。
        # 仅当采用双向认证方式时，需要设置该参数或者PolyClientCertificateIds。
        # @type ClientCertificateId: String
        # @param PolyClientCertificateIds: 新的多客户端证书ID列表。其中：
        # 仅当采用双向认证方式时，需要设置该参数或ClientCertificateId参数。
        # @type PolyClientCertificateIds: Array

        attr_accessor :ListenerId, :Domain, :CertificateId, :ClientCertificateId, :PolyClientCertificateIds
        
        def initialize(listenerid=nil, domain=nil, certificateid=nil, clientcertificateid=nil, polyclientcertificateids=nil)
          @ListenerId = listenerid
          @Domain = domain
          @CertificateId = certificateid
          @ClientCertificateId = clientcertificateid
          @PolyClientCertificateIds = polyclientcertificateids
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Domain = params['Domain']
          @CertificateId = params['CertificateId']
          @ClientCertificateId = params['ClientCertificateId']
          @PolyClientCertificateIds = params['PolyClientCertificateIds']
        end
      end

      # ModifyCertificate返回参数结构体
      class ModifyCertificateResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyDomain请求参数结构体
      class ModifyDomainRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 7层监听器ID
        # @type ListenerId: String
        # @param OldDomain: 修改前的域名信息
        # @type OldDomain: String
        # @param NewDomain: 修改后的域名信息
        # @type NewDomain: String
        # @param CertificateId: 服务器SSL证书ID，仅适用于version3.0的通道。其中：
        # 不带该字段时，表示使用原证书；
        # 携带该字段时并且CertificateId=default，表示使用监听器证书；
        # 其他情况，使用该CertificateId指定的证书。
        # @type CertificateId: String
        # @param ClientCertificateId: 客户端CA证书ID，仅适用于version3.0的通道。其中：
        # 不带该字段和PolyClientCertificateIds时，表示使用原证书；
        # 携带该字段时并且ClientCertificateId=default，表示使用监听器证书；
        # 其他情况，使用该ClientCertificateId或PolyClientCertificateIds指定的证书。
        # @type ClientCertificateId: String
        # @param PolyClientCertificateIds: 客户端CA证书ID，仅适用于version3.0的通道。其中：
        # 不带该字段和ClientCertificateId时，表示使用原证书；
        # 携带该字段时并且ClientCertificateId=default，表示使用监听器证书；
        # 其他情况，使用该ClientCertificateId或PolyClientCertificateIds指定的证书。
        # @type PolyClientCertificateIds: Array

        attr_accessor :ListenerId, :OldDomain, :NewDomain, :CertificateId, :ClientCertificateId, :PolyClientCertificateIds
        
        def initialize(listenerid=nil, olddomain=nil, newdomain=nil, certificateid=nil, clientcertificateid=nil, polyclientcertificateids=nil)
          @ListenerId = listenerid
          @OldDomain = olddomain
          @NewDomain = newdomain
          @CertificateId = certificateid
          @ClientCertificateId = clientcertificateid
          @PolyClientCertificateIds = polyclientcertificateids
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @OldDomain = params['OldDomain']
          @NewDomain = params['NewDomain']
          @CertificateId = params['CertificateId']
          @ClientCertificateId = params['ClientCertificateId']
          @PolyClientCertificateIds = params['PolyClientCertificateIds']
        end
      end

      # ModifyDomain返回参数结构体
      class ModifyDomainResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyGroupDomainConfig请求参数结构体
      class ModifyGroupDomainConfigRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 通道组ID。
        # @type GroupId: String
        # @param DefaultDnsIp: 域名解析默认访问IP或域名。
        # @type DefaultDnsIp: String
        # @param AccessRegionList: 就近接入区域配置。
        # @type AccessRegionList: Array

        attr_accessor :GroupId, :DefaultDnsIp, :AccessRegionList
        
        def initialize(groupid=nil, defaultdnsip=nil, accessregionlist=nil)
          @GroupId = groupid
          @DefaultDnsIp = defaultdnsip
          @AccessRegionList = accessregionlist
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @DefaultDnsIp = params['DefaultDnsIp']
          @AccessRegionList = params['AccessRegionList']
        end
      end

      # ModifyGroupDomainConfig返回参数结构体
      class ModifyGroupDomainConfigResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyHTTPListenerAttribute请求参数结构体
      class ModifyHTTPListenerAttributeRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 需要修改的监听器ID
        # @type ListenerId: String
        # @param ListenerName: 新的监听器名称
        # @type ListenerName: String
        # @param ProxyId: 通道ID
        # @type ProxyId: String

        attr_accessor :ListenerId, :ListenerName, :ProxyId
        
        def initialize(listenerid=nil, listenername=nil, proxyid=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @ProxyId = proxyid
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @ProxyId = params['ProxyId']
        end
      end

      # ModifyHTTPListenerAttribute返回参数结构体
      class ModifyHTTPListenerAttributeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyHTTPSListenerAttribute请求参数结构体
      class ModifyHTTPSListenerAttributeRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param ProxyId: 通道ID， 若为单通道监听器，此项必须填写
        # @type ProxyId: String
        # @param ListenerName: 修改后的监听器名称
        # @type ListenerName: String
        # @param ForwardProtocol: 监听器后端转发与源站之间的协议类型
        # @type ForwardProtocol: String
        # @param CertificateId: 修改后的监听器服务器证书ID
        # @type CertificateId: String
        # @param ClientCertificateId: 修改后的监听器客户端证书ID，不支持多客户端证书，多客户端证书新采用PolyClientCertificateIds字段
        # @type ClientCertificateId: String
        # @param PolyClientCertificateIds: 新字段,修改后的监听器客户端证书ID
        # @type PolyClientCertificateIds: Array

        attr_accessor :ListenerId, :ProxyId, :ListenerName, :ForwardProtocol, :CertificateId, :ClientCertificateId, :PolyClientCertificateIds
        
        def initialize(listenerid=nil, proxyid=nil, listenername=nil, forwardprotocol=nil, certificateid=nil, clientcertificateid=nil, polyclientcertificateids=nil)
          @ListenerId = listenerid
          @ProxyId = proxyid
          @ListenerName = listenername
          @ForwardProtocol = forwardprotocol
          @CertificateId = certificateid
          @ClientCertificateId = clientcertificateid
          @PolyClientCertificateIds = polyclientcertificateids
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ProxyId = params['ProxyId']
          @ListenerName = params['ListenerName']
          @ForwardProtocol = params['ForwardProtocol']
          @CertificateId = params['CertificateId']
          @ClientCertificateId = params['ClientCertificateId']
          @PolyClientCertificateIds = params['PolyClientCertificateIds']
        end
      end

      # ModifyHTTPSListenerAttribute返回参数结构体
      class ModifyHTTPSListenerAttributeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyProxiesAttribute请求参数结构体
      class ModifyProxiesAttributeRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: （旧参数，请切换到ProxyIds）一个或多个待操作的通道ID。
        # @type InstanceIds: Array
        # @param ProxyName: 通道名称。可任意命名，但不得超过30个字符。
        # @type ProxyName: String
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # 更多详细信息请参阅：如何保证幂等性。
        # @type ClientToken: String
        # @param ProxyIds: （新参数）一个或多个待操作的通道ID。
        # @type ProxyIds: Array

        attr_accessor :InstanceIds, :ProxyName, :ClientToken, :ProxyIds
        
        def initialize(instanceids=nil, proxyname=nil, clienttoken=nil, proxyids=nil)
          @InstanceIds = instanceids
          @ProxyName = proxyname
          @ClientToken = clienttoken
          @ProxyIds = proxyids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @ProxyName = params['ProxyName']
          @ClientToken = params['ClientToken']
          @ProxyIds = params['ProxyIds']
        end
      end

      # ModifyProxiesAttribute返回参数结构体
      class ModifyProxiesAttributeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyProxiesProject请求参数结构体
      class ModifyProxiesProjectRequest < TencentCloud::Common::AbstractModel
        # @param ProjectId: 需要修改到的项目ID。
        # @type ProjectId: Integer
        # @param InstanceIds: （旧参数，请切换到ProxyIds）一个或多个待操作的通道ID。
        # @type InstanceIds: Array
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # 更多详细信息请参阅：如何保证幂等性。
        # @type ClientToken: String
        # @param ProxyIds: （新参数）一个或多个待操作的通道ID。
        # @type ProxyIds: Array

        attr_accessor :ProjectId, :InstanceIds, :ClientToken, :ProxyIds
        
        def initialize(projectid=nil, instanceids=nil, clienttoken=nil, proxyids=nil)
          @ProjectId = projectid
          @InstanceIds = instanceids
          @ClientToken = clienttoken
          @ProxyIds = proxyids
        end

        def deserialize(params)
          @ProjectId = params['ProjectId']
          @InstanceIds = params['InstanceIds']
          @ClientToken = params['ClientToken']
          @ProxyIds = params['ProxyIds']
        end
      end

      # ModifyProxiesProject返回参数结构体
      class ModifyProxiesProjectResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyProxyConfiguration请求参数结构体
      class ModifyProxyConfigurationRequest < TencentCloud::Common::AbstractModel
        # @param InstanceId: （旧参数，请切换到ProxyId）通道的实例ID。
        # @type InstanceId: String
        # @param Bandwidth: 需要调整到的目标带宽，单位：Mbps。
        # Bandwidth与Concurrent必须至少设置一个。取值范围根据DescribeAccessRegionsByDestRegion接口获取得到
        # @type Bandwidth: Integer
        # @param Concurrent: 需要调整到的目标并发值，单位：万。
        # Bandwidth与Concurrent必须至少设置一个。取值范围根据DescribeAccessRegionsByDestRegion接口获取得到
        # @type Concurrent: Integer
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # 更多详细信息请参阅：如何保证幂等性。
        # @type ClientToken: String
        # @param ProxyId: （新参数）通道的实例ID。
        # @type ProxyId: String
        # @param BillingType: 计费方式 (0:按带宽计费，1:按流量计费 默认按带宽计费）
        # @type BillingType: Integer

        attr_accessor :InstanceId, :Bandwidth, :Concurrent, :ClientToken, :ProxyId, :BillingType
        
        def initialize(instanceid=nil, bandwidth=nil, concurrent=nil, clienttoken=nil, proxyid=nil, billingtype=nil)
          @InstanceId = instanceid
          @Bandwidth = bandwidth
          @Concurrent = concurrent
          @ClientToken = clienttoken
          @ProxyId = proxyid
          @BillingType = billingtype
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Bandwidth = params['Bandwidth']
          @Concurrent = params['Concurrent']
          @ClientToken = params['ClientToken']
          @ProxyId = params['ProxyId']
          @BillingType = params['BillingType']
        end
      end

      # ModifyProxyConfiguration返回参数结构体
      class ModifyProxyConfigurationResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyProxyGroupAttribute请求参数结构体
      class ModifyProxyGroupAttributeRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 需要修改的通道组ID。
        # @type GroupId: String
        # @param GroupName: 修改后的通道组名称：不超过30个字符，超过部分会被截断。
        # @type GroupName: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer

        attr_accessor :GroupId, :GroupName, :ProjectId
        
        def initialize(groupid=nil, groupname=nil, projectid=nil)
          @GroupId = groupid
          @GroupName = groupname
          @ProjectId = projectid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @GroupName = params['GroupName']
          @ProjectId = params['ProjectId']
        end
      end

      # ModifyProxyGroupAttribute返回参数结构体
      class ModifyProxyGroupAttributeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyRealServerName请求参数结构体
      class ModifyRealServerNameRequest < TencentCloud::Common::AbstractModel
        # @param RealServerName: 源站名称
        # @type RealServerName: String
        # @param RealServerId: 源站ID
        # @type RealServerId: String

        attr_accessor :RealServerName, :RealServerId
        
        def initialize(realservername=nil, realserverid=nil)
          @RealServerName = realservername
          @RealServerId = realserverid
        end

        def deserialize(params)
          @RealServerName = params['RealServerName']
          @RealServerId = params['RealServerId']
        end
      end

      # ModifyRealServerName返回参数结构体
      class ModifyRealServerNameResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyRuleAttribute请求参数结构体
      class ModifyRuleAttributeRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param RuleId: 转发规则ID
        # @type RuleId: String
        # @param Scheduler: 调度策略，其中：
        # rr，轮询；
        # wrr，加权轮询；
        # lc，最小连接数。
        # @type Scheduler: String
        # @param HealthCheck: 源站健康检查开关，其中：
        # 1，开启；
        # 0，关闭。
        # @type HealthCheck: Integer
        # @param CheckParams: 健康检查配置参数
        # @type CheckParams: :class:`Tencentcloud::Gaap.v20180529.models.RuleCheckParams`
        # @param Path: 转发规则路径
        # @type Path: String
        # @param ForwardProtocol: 加速通道转发到源站的协议类型，支持：default, HTTP和HTTPS。
        # 当ForwardProtocol=default时，表示使用对应监听器的ForwardProtocol。
        # @type ForwardProtocol: String
        # @param ForwardHost: 加速通道转发到源站的请求中携带的host。
        # 当ForwardHost=default时，使用规则的域名，其他情况为该字段所设置的值。
        # @type ForwardHost: String

        attr_accessor :ListenerId, :RuleId, :Scheduler, :HealthCheck, :CheckParams, :Path, :ForwardProtocol, :ForwardHost
        
        def initialize(listenerid=nil, ruleid=nil, scheduler=nil, healthcheck=nil, checkparams=nil, path=nil, forwardprotocol=nil, forwardhost=nil)
          @ListenerId = listenerid
          @RuleId = ruleid
          @Scheduler = scheduler
          @HealthCheck = healthcheck
          @CheckParams = checkparams
          @Path = path
          @ForwardProtocol = forwardprotocol
          @ForwardHost = forwardhost
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @RuleId = params['RuleId']
          @Scheduler = params['Scheduler']
          @HealthCheck = params['HealthCheck']
          unless params['CheckParams'].nil?
            @CheckParams = RuleCheckParams.new.deserialize(params[CheckParams])
          end
          @Path = params['Path']
          @ForwardProtocol = params['ForwardProtocol']
          @ForwardHost = params['ForwardHost']
        end
      end

      # ModifyRuleAttribute返回参数结构体
      class ModifyRuleAttributeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifySecurityRule请求参数结构体
      class ModifySecurityRuleRequest < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param AliasName: 规则名：不得超过30个字符，超过部分会被截断。
        # @type AliasName: String
        # @param PolicyId: 安全策略ID
        # @type PolicyId: String

        attr_accessor :RuleId, :AliasName, :PolicyId
        
        def initialize(ruleid=nil, aliasname=nil, policyid=nil)
          @RuleId = ruleid
          @AliasName = aliasname
          @PolicyId = policyid
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @AliasName = params['AliasName']
          @PolicyId = params['PolicyId']
        end
      end

      # ModifySecurityRule返回参数结构体
      class ModifySecurityRuleResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyTCPListenerAttribute请求参数结构体
      class ModifyTCPListenerAttributeRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param GroupId: 通道组ID，ProxyId和GroupId必须设置一个，但不能同时设置。
        # @type GroupId: String
        # @param ProxyId: 通道ID，ProxyId和GroupId必须设置一个，但不能同时设置。
        # @type ProxyId: String
        # @param ListenerName: 监听器名称
        # @type ListenerName: String
        # @param Scheduler: 监听器源站调度策略，支持轮询（rr），加权轮询（wrr），最小连接数（lc）。
        # @type Scheduler: String
        # @param DelayLoop: 源站健康检查时间间隔，单位：秒。时间间隔取值在[5，300]之间。
        # @type DelayLoop: Integer
        # @param ConnectTimeout: 源站健康检查响应超时时间，单位：秒。超时时间取值在[2，60]之间。超时时间应小于健康检查时间间隔DelayLoop。
        # @type ConnectTimeout: Integer
        # @param HealthCheck: 是否开启健康检查，1开启，0关闭。
        # @type HealthCheck: Integer

        attr_accessor :ListenerId, :GroupId, :ProxyId, :ListenerName, :Scheduler, :DelayLoop, :ConnectTimeout, :HealthCheck
        
        def initialize(listenerid=nil, groupid=nil, proxyid=nil, listenername=nil, scheduler=nil, delayloop=nil, connecttimeout=nil, healthcheck=nil)
          @ListenerId = listenerid
          @GroupId = groupid
          @ProxyId = proxyid
          @ListenerName = listenername
          @Scheduler = scheduler
          @DelayLoop = delayloop
          @ConnectTimeout = connecttimeout
          @HealthCheck = healthcheck
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @GroupId = params['GroupId']
          @ProxyId = params['ProxyId']
          @ListenerName = params['ListenerName']
          @Scheduler = params['Scheduler']
          @DelayLoop = params['DelayLoop']
          @ConnectTimeout = params['ConnectTimeout']
          @HealthCheck = params['HealthCheck']
        end
      end

      # ModifyTCPListenerAttribute返回参数结构体
      class ModifyTCPListenerAttributeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # ModifyUDPListenerAttribute请求参数结构体
      class ModifyUDPListenerAttributeRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param GroupId: 通道组ID，ProxyId和GroupId必须设置一个，但不能同时设置。
        # @type GroupId: String
        # @param ProxyId: 通道ID，ProxyId和GroupId必须设置一个，但不能同时设置。
        # @type ProxyId: String
        # @param ListenerName: 监听器名称
        # @type ListenerName: String
        # @param Scheduler: 监听器源站调度策略
        # @type Scheduler: String

        attr_accessor :ListenerId, :GroupId, :ProxyId, :ListenerName, :Scheduler
        
        def initialize(listenerid=nil, groupid=nil, proxyid=nil, listenername=nil, scheduler=nil)
          @ListenerId = listenerid
          @GroupId = groupid
          @ProxyId = proxyid
          @ListenerName = listenername
          @Scheduler = scheduler
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @GroupId = params['GroupId']
          @ProxyId = params['ProxyId']
          @ListenerName = params['ListenerName']
          @Scheduler = params['Scheduler']
        end
      end

      # ModifyUDPListenerAttribute返回参数结构体
      class ModifyUDPListenerAttributeResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 就近接入的国家地区详情
      class NationCountryInnerInfo < TencentCloud::Common::AbstractModel
        # @param NationCountryName: 国家名
        # @type NationCountryName: String
        # @param NationCountryInnerCode: 国家内部编码
        # @type NationCountryInnerCode: String

        attr_accessor :NationCountryName, :NationCountryInnerCode
        
        def initialize(nationcountryname=nil, nationcountryinnercode=nil)
          @NationCountryName = nationcountryname
          @NationCountryInnerCode = nationcountryinnercode
        end

        def deserialize(params)
          @NationCountryName = params['NationCountryName']
          @NationCountryInnerCode = params['NationCountryInnerCode']
        end
      end

      # 新添加源站信息
      class NewRealServer < TencentCloud::Common::AbstractModel
        # @param RealServerId: 源站ID
        # @type RealServerId: String
        # @param RealServerIP: 源站ip或域名
        # @type RealServerIP: String

        attr_accessor :RealServerId, :RealServerIP
        
        def initialize(realserverid=nil, realserverip=nil)
          @RealServerId = realserverid
          @RealServerIP = realserverip
        end

        def deserialize(params)
          @RealServerId = params['RealServerId']
          @RealServerIP = params['RealServerIP']
        end
      end

      # OpenProxies请求参数结构体
      class OpenProxiesRequest < TencentCloud::Common::AbstractModel
        # @param InstanceIds: （旧参数，请切换到ProxyIds）通道的实例ID列表。
        # @type InstanceIds: Array
        # @param ClientToken: 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        # 更多详细信息请参阅：如何保证幂等性。
        # @type ClientToken: String
        # @param ProxyIds: （新参数）通道的实例ID列表。
        # @type ProxyIds: Array

        attr_accessor :InstanceIds, :ClientToken, :ProxyIds
        
        def initialize(instanceids=nil, clienttoken=nil, proxyids=nil)
          @InstanceIds = instanceids
          @ClientToken = clienttoken
          @ProxyIds = proxyids
        end

        def deserialize(params)
          @InstanceIds = params['InstanceIds']
          @ClientToken = params['ClientToken']
          @ProxyIds = params['ProxyIds']
        end
      end

      # OpenProxies返回参数结构体
      class OpenProxiesResponse < TencentCloud::Common::AbstractModel
        # @param InvalidStatusInstanceSet: 非关闭状态下的通道实例ID列表，不可开启。
        # @type InvalidStatusInstanceSet: Array
        # @param OperationFailedInstanceSet: 开启操作失败的通道实例ID列表。
        # @type OperationFailedInstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InvalidStatusInstanceSet, :OperationFailedInstanceSet, :RequestId
        
        def initialize(invalidstatusinstanceset=nil, operationfailedinstanceset=nil, requestid=nil)
          @InvalidStatusInstanceSet = invalidstatusinstanceset
          @OperationFailedInstanceSet = operationfailedinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @InvalidStatusInstanceSet = params['InvalidStatusInstanceSet']
          @OperationFailedInstanceSet = params['OperationFailedInstanceSet']
          @RequestId = params['RequestId']
        end
      end

      # OpenProxyGroup请求参数结构体
      class OpenProxyGroupRequest < TencentCloud::Common::AbstractModel
        # @param GroupId: 通道组实例 ID
        # @type GroupId: String

        attr_accessor :GroupId
        
        def initialize(groupid=nil)
          @GroupId = groupid
        end

        def deserialize(params)
          @GroupId = params['GroupId']
        end
      end

      # OpenProxyGroup返回参数结构体
      class OpenProxyGroupResponse < TencentCloud::Common::AbstractModel
        # @param InvalidStatusInstanceSet: 非关闭状态下的通道实例ID列表，不可开启。
        # @type InvalidStatusInstanceSet: Array
        # @param OperationFailedInstanceSet: 开启操作失败的通道实例ID列表。
        # @type OperationFailedInstanceSet: Array
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :InvalidStatusInstanceSet, :OperationFailedInstanceSet, :RequestId
        
        def initialize(invalidstatusinstanceset=nil, operationfailedinstanceset=nil, requestid=nil)
          @InvalidStatusInstanceSet = invalidstatusinstanceset
          @OperationFailedInstanceSet = operationfailedinstanceset
          @RequestId = requestid
        end

        def deserialize(params)
          @InvalidStatusInstanceSet = params['InvalidStatusInstanceSet']
          @OperationFailedInstanceSet = params['OperationFailedInstanceSet']
          @RequestId = params['RequestId']
        end
      end

      # OpenSecurityPolicy请求参数结构体
      class OpenSecurityPolicyRequest < TencentCloud::Common::AbstractModel
        # @param ProxyId: 需开启安全策略的通道ID
        # @type ProxyId: String
        # @param PolicyId: 安全策略ID
        # @type PolicyId: String

        attr_accessor :ProxyId, :PolicyId
        
        def initialize(proxyid=nil, policyid=nil)
          @ProxyId = proxyid
          @PolicyId = policyid
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @PolicyId = params['PolicyId']
        end
      end

      # OpenSecurityPolicy返回参数结构体
      class OpenSecurityPolicyResponse < TencentCloud::Common::AbstractModel
        # @param TaskId: 异步流程ID，可以通过DescribeAsyncTaskStatus接口查询流程运行状态
        # @type TaskId: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TaskId, :RequestId
        
        def initialize(taskid=nil, requestid=nil)
          @TaskId = taskid
          @RequestId = requestid
        end

        def deserialize(params)
          @TaskId = params['TaskId']
          @RequestId = params['RequestId']
        end
      end

      # 通道组详情信息
      class ProxyGroupDetail < TencentCloud::Common::AbstractModel
        # @param CreateTime: 创建时间
        # @type CreateTime: Integer
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param ProxyNum: 通道组中通道数量
        # @type ProxyNum: Integer
        # @param Status: 通道组状态：
        # 0表示正常运行；
        # 1表示创建中；
        # 4表示销毁中；
        # 11表示迁移中；
        # @type Status: Integer
        # @param OwnerUin: 归属Uin
        # @type OwnerUin: String
        # @param CreateUin: 创建Uin
        # @type CreateUin: String
        # @param GroupName: 通道名称
        # @type GroupName: String
        # @param DnsDefaultIp: 通道组域名解析默认IP
        # @type DnsDefaultIp: String
        # @param Domain: 通道组域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param RealServerRegionInfo: 目标地域
        # @type RealServerRegionInfo: :class:`Tencentcloud::Gaap.v20180529.models.RegionDetail`
        # @param IsOldGroup: 是否老通道组，2018-08-03之前创建的通道组为老通道组
        # @type IsOldGroup: Boolean
        # @param GroupId: 通道组ID
        # @type GroupId: String
        # @param TagSet: 标签列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSet: Array
        # @param PolicyId: 安全策略ID，当设置了安全策略时，存在该字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyId: String
        # @param Version: 通道组版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param ClientIPMethod: 通道获取客户端IP的方式，0表示TOA，1表示Proxy Protocol
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIPMethod: Array

        attr_accessor :CreateTime, :ProjectId, :ProxyNum, :Status, :OwnerUin, :CreateUin, :GroupName, :DnsDefaultIp, :Domain, :RealServerRegionInfo, :IsOldGroup, :GroupId, :TagSet, :PolicyId, :Version, :ClientIPMethod
        
        def initialize(createtime=nil, projectid=nil, proxynum=nil, status=nil, owneruin=nil, createuin=nil, groupname=nil, dnsdefaultip=nil, domain=nil, realserverregioninfo=nil, isoldgroup=nil, groupid=nil, tagset=nil, policyid=nil, version=nil, clientipmethod=nil)
          @CreateTime = createtime
          @ProjectId = projectid
          @ProxyNum = proxynum
          @Status = status
          @OwnerUin = owneruin
          @CreateUin = createuin
          @GroupName = groupname
          @DnsDefaultIp = dnsdefaultip
          @Domain = domain
          @RealServerRegionInfo = realserverregioninfo
          @IsOldGroup = isoldgroup
          @GroupId = groupid
          @TagSet = tagset
          @PolicyId = policyid
          @Version = version
          @ClientIPMethod = clientipmethod
        end

        def deserialize(params)
          @CreateTime = params['CreateTime']
          @ProjectId = params['ProjectId']
          @ProxyNum = params['ProxyNum']
          @Status = params['Status']
          @OwnerUin = params['OwnerUin']
          @CreateUin = params['CreateUin']
          @GroupName = params['GroupName']
          @DnsDefaultIp = params['DnsDefaultIp']
          @Domain = params['Domain']
          unless params['RealServerRegionInfo'].nil?
            @RealServerRegionInfo = RegionDetail.new.deserialize(params[RealServerRegionInfo])
          end
          @IsOldGroup = params['IsOldGroup']
          @GroupId = params['GroupId']
          @TagSet = params['TagSet']
          @PolicyId = params['PolicyId']
          @Version = params['Version']
          @ClientIPMethod = params['ClientIPMethod']
        end
      end

      # 通道组详情列表
      class ProxyGroupInfo < TencentCloud::Common::AbstractModel
        # @param GroupId: 通道组id
        # @type GroupId: String
        # @param Domain: 通道组域名
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Domain: String
        # @param GroupName: 通道组名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupName: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer
        # @param RealServerRegionInfo: 目标地域
        # @type RealServerRegionInfo: :class:`Tencentcloud::Gaap.v20180529.models.RegionDetail`
        # @param Status: 通道组状态。
        # 其中，
        # RUNNING表示运行中；
        # CREATING表示创建中；
        # DESTROYING表示销毁中；
        # MOVING表示通道迁移中。
        # @type Status: String
        # @param TagSet: 标签列表。
        # @type TagSet: Array
        # @param Version: 通道组版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Version: String
        # @param CreateTime: 创建时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CreateTime: Integer
        # @param ProxyType: 通道组是否包含微软通道
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyType: Integer

        attr_accessor :GroupId, :Domain, :GroupName, :ProjectId, :RealServerRegionInfo, :Status, :TagSet, :Version, :CreateTime, :ProxyType
        
        def initialize(groupid=nil, domain=nil, groupname=nil, projectid=nil, realserverregioninfo=nil, status=nil, tagset=nil, version=nil, createtime=nil, proxytype=nil)
          @GroupId = groupid
          @Domain = domain
          @GroupName = groupname
          @ProjectId = projectid
          @RealServerRegionInfo = realserverregioninfo
          @Status = status
          @TagSet = tagset
          @Version = version
          @CreateTime = createtime
          @ProxyType = proxytype
        end

        def deserialize(params)
          @GroupId = params['GroupId']
          @Domain = params['Domain']
          @GroupName = params['GroupName']
          @ProjectId = params['ProjectId']
          unless params['RealServerRegionInfo'].nil?
            @RealServerRegionInfo = RegionDetail.new.deserialize(params[RealServerRegionInfo])
          end
          @Status = params['Status']
          @TagSet = params['TagSet']
          @Version = params['Version']
          @CreateTime = params['CreateTime']
          @ProxyType = params['ProxyType']
        end
      end

      # 通道ID
      class ProxyIdDict < TencentCloud::Common::AbstractModel
        # @param ProxyId: 通道ID
        # @type ProxyId: String

        attr_accessor :ProxyId
        
        def initialize(proxyid=nil)
          @ProxyId = proxyid
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
        end
      end

      # 通道信息
      class ProxyInfo < TencentCloud::Common::AbstractModel
        # @param InstanceId: （旧参数，请使用ProxyId）通道实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type InstanceId: String
        # @param CreateTime: 创建时间，采用Unix时间戳的方式，表示从1970年1月1日（UTC/GMT的午夜）开始所经过的秒数。
        # @type CreateTime: Integer
        # @param ProjectId: 项目ID。
        # @type ProjectId: Integer
        # @param ProxyName: 通道名称。
        # @type ProxyName: String
        # @param AccessRegion: 接入地域。
        # @type AccessRegion: String
        # @param RealServerRegion: 源站地域。
        # @type RealServerRegion: String
        # @param Bandwidth: 带宽，单位：Mbps。
        # @type Bandwidth: Integer
        # @param Concurrent: 并发，单位：个/秒。
        # @type Concurrent: Integer
        # @param Status: 通道状态。其中：
        # RUNNING表示运行中；
        # CREATING表示创建中；
        # DESTROYING表示销毁中；
        # OPENING表示开启中；
        # CLOSING表示关闭中；
        # CLOSED表示已关闭；
        # ADJUSTING表示配置变更中；
        # ISOLATING表示隔离中；
        # ISOLATED表示已隔离；
        # CLONING表示复制中；
        # UNKNOWN表示未知状态。
        # @type Status: String
        # @param Domain: 接入域名。
        # @type Domain: String
        # @param IP: 接入IP。
        # @type IP: String
        # @param Version: 通道版本号：1.0，2.0，3.0。
        # @type Version: String
        # @param ProxyId: （新参数）通道实例ID。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyId: String
        # @param Scalarable: 1，该通道可缩扩容；0，该通道无法缩扩容。
        # @type Scalarable: Integer
        # @param SupportProtocols: 支持的协议类型。
        # @type SupportProtocols: Array
        # @param GroupId: 通道组ID，当通道归属于某一通道组时，存在该字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type GroupId: String
        # @param PolicyId: 安全策略ID，当设置了安全策略时，存在该字段。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyId: String
        # @param AccessRegionInfo: 接入地域详细信息，包括地域ID和地域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type AccessRegionInfo: :class:`Tencentcloud::Gaap.v20180529.models.RegionDetail`
        # @param RealServerRegionInfo: 源站地域详细信息，包括地域ID和地域名。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealServerRegionInfo: :class:`Tencentcloud::Gaap.v20180529.models.RegionDetail`
        # @param ForwardIP: 通道转发IP
        # @type ForwardIP: String
        # @param TagSet: 标签列表，不存在标签时，该字段为空列表。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type TagSet: Array
        # @param SupportSecurity: 是否支持安全组配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SupportSecurity: Integer
        # @param BillingType: 计费类型: 0表示按带宽计费  1表示按流量计费。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BillingType: Integer
        # @param RelatedGlobalDomains: 关联了解析的域名列表
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RelatedGlobalDomains: Array
        # @param ModifyConfigTime: 配置变更时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ModifyConfigTime: Integer
        # @param ProxyType: 通道类型，104表示新的银牌质量通道类型
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ProxyType: Integer
        # @param ClientIPMethod: 通道获取客户端IP的方式，0表示TOA，1表示Proxy Protocol
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIPMethod: Array

        attr_accessor :InstanceId, :CreateTime, :ProjectId, :ProxyName, :AccessRegion, :RealServerRegion, :Bandwidth, :Concurrent, :Status, :Domain, :IP, :Version, :ProxyId, :Scalarable, :SupportProtocols, :GroupId, :PolicyId, :AccessRegionInfo, :RealServerRegionInfo, :ForwardIP, :TagSet, :SupportSecurity, :BillingType, :RelatedGlobalDomains, :ModifyConfigTime, :ProxyType, :ClientIPMethod
        
        def initialize(instanceid=nil, createtime=nil, projectid=nil, proxyname=nil, accessregion=nil, realserverregion=nil, bandwidth=nil, concurrent=nil, status=nil, domain=nil, ip=nil, version=nil, proxyid=nil, scalarable=nil, supportprotocols=nil, groupid=nil, policyid=nil, accessregioninfo=nil, realserverregioninfo=nil, forwardip=nil, tagset=nil, supportsecurity=nil, billingtype=nil, relatedglobaldomains=nil, modifyconfigtime=nil, proxytype=nil, clientipmethod=nil)
          @InstanceId = instanceid
          @CreateTime = createtime
          @ProjectId = projectid
          @ProxyName = proxyname
          @AccessRegion = accessregion
          @RealServerRegion = realserverregion
          @Bandwidth = bandwidth
          @Concurrent = concurrent
          @Status = status
          @Domain = domain
          @IP = ip
          @Version = version
          @ProxyId = proxyid
          @Scalarable = scalarable
          @SupportProtocols = supportprotocols
          @GroupId = groupid
          @PolicyId = policyid
          @AccessRegionInfo = accessregioninfo
          @RealServerRegionInfo = realserverregioninfo
          @ForwardIP = forwardip
          @TagSet = tagset
          @SupportSecurity = supportsecurity
          @BillingType = billingtype
          @RelatedGlobalDomains = relatedglobaldomains
          @ModifyConfigTime = modifyconfigtime
          @ProxyType = proxytype
          @ClientIPMethod = clientipmethod
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @CreateTime = params['CreateTime']
          @ProjectId = params['ProjectId']
          @ProxyName = params['ProxyName']
          @AccessRegion = params['AccessRegion']
          @RealServerRegion = params['RealServerRegion']
          @Bandwidth = params['Bandwidth']
          @Concurrent = params['Concurrent']
          @Status = params['Status']
          @Domain = params['Domain']
          @IP = params['IP']
          @Version = params['Version']
          @ProxyId = params['ProxyId']
          @Scalarable = params['Scalarable']
          @SupportProtocols = params['SupportProtocols']
          @GroupId = params['GroupId']
          @PolicyId = params['PolicyId']
          unless params['AccessRegionInfo'].nil?
            @AccessRegionInfo = RegionDetail.new.deserialize(params[AccessRegionInfo])
          end
          unless params['RealServerRegionInfo'].nil?
            @RealServerRegionInfo = RegionDetail.new.deserialize(params[RealServerRegionInfo])
          end
          @ForwardIP = params['ForwardIP']
          @TagSet = params['TagSet']
          @SupportSecurity = params['SupportSecurity']
          @BillingType = params['BillingType']
          @RelatedGlobalDomains = params['RelatedGlobalDomains']
          @ModifyConfigTime = params['ModifyConfigTime']
          @ProxyType = params['ProxyType']
          @ClientIPMethod = params['ClientIPMethod']
        end
      end

      # 内部接口使用，返回可以查询统计数据的通道和对应的监听器信息
      class ProxySimpleInfo < TencentCloud::Common::AbstractModel
        # @param ProxyId: 通道ID
        # @type ProxyId: String
        # @param ProxyName: 通道名称
        # @type ProxyName: String
        # @param ListenerList: 监听器列表
        # @type ListenerList: Array

        attr_accessor :ProxyId, :ProxyName, :ListenerList
        
        def initialize(proxyid=nil, proxyname=nil, listenerlist=nil)
          @ProxyId = proxyid
          @ProxyName = proxyname
          @ListenerList = listenerlist
        end

        def deserialize(params)
          @ProxyId = params['ProxyId']
          @ProxyName = params['ProxyName']
          @ListenerList = params['ListenerList']
        end
      end

      # 通道状态信息
      class ProxyStatus < TencentCloud::Common::AbstractModel
        # @param InstanceId: 通道实例ID。
        # @type InstanceId: String
        # @param Status: 通道状态。
        # 其中：
        # RUNNING表示运行中；
        # CREATING表示创建中；
        # DESTROYING表示销毁中；
        # OPENING表示开启中；
        # CLOSING表示关闭中；
        # CLOSED表示已关闭；
        # ADJUSTING表示配置变更中；
        # ISOLATING表示隔离中；
        # ISOLATED表示已隔离；
        # UNKNOWN表示未知状态。
        # @type Status: String

        attr_accessor :InstanceId, :Status
        
        def initialize(instanceid=nil, status=nil)
          @InstanceId = instanceid
          @Status = status
        end

        def deserialize(params)
          @InstanceId = params['InstanceId']
          @Status = params['Status']
        end
      end

      # 查询监听器或者规则相关的源站信息，不包括tag信息
      class RealServer < TencentCloud::Common::AbstractModel
        # @param RealServerIP: 源站的IP或域名
        # @type RealServerIP: String
        # @param RealServerId: 源站ID
        # @type RealServerId: String
        # @param RealServerName: 源站名称
        # @type RealServerName: String
        # @param ProjectId: 项目ID
        # @type ProjectId: Integer

        attr_accessor :RealServerIP, :RealServerId, :RealServerName, :ProjectId
        
        def initialize(realserverip=nil, realserverid=nil, realservername=nil, projectid=nil)
          @RealServerIP = realserverip
          @RealServerId = realserverid
          @RealServerName = realservername
          @ProjectId = projectid
        end

        def deserialize(params)
          @RealServerIP = params['RealServerIP']
          @RealServerId = params['RealServerId']
          @RealServerName = params['RealServerName']
          @ProjectId = params['ProjectId']
        end
      end

      # RealServerBindSetReq
      class RealServerBindSetReq < TencentCloud::Common::AbstractModel
        # @param RealServerId: 源站id
        # @type RealServerId: String
        # @param RealServerPort: 源站端口
        # @type RealServerPort: Integer
        # @param RealServerIP: 源站IP
        # @type RealServerIP: String
        # @param RealServerWeight: 源站权重
        # @type RealServerWeight: Integer

        attr_accessor :RealServerId, :RealServerPort, :RealServerIP, :RealServerWeight
        
        def initialize(realserverid=nil, realserverport=nil, realserverip=nil, realserverweight=nil)
          @RealServerId = realserverid
          @RealServerPort = realserverport
          @RealServerIP = realserverip
          @RealServerWeight = realserverweight
        end

        def deserialize(params)
          @RealServerId = params['RealServerId']
          @RealServerPort = params['RealServerPort']
          @RealServerIP = params['RealServerIP']
          @RealServerWeight = params['RealServerWeight']
        end
      end

      # 源站绑定信息查询，BindStatus， 0: 未被绑定 1：被规则或者监听器绑定
      class RealServerStatus < TencentCloud::Common::AbstractModel
        # @param RealServerId: 源站ID。
        # @type RealServerId: String
        # @param BindStatus: 0表示未被绑定 1表示被规则或者监听器绑定。
        # @type BindStatus: Integer
        # @param ProxyId: 绑定此源站的通道ID，没有绑定时为空字符串。
        # @type ProxyId: String

        attr_accessor :RealServerId, :BindStatus, :ProxyId
        
        def initialize(realserverid=nil, bindstatus=nil, proxyid=nil)
          @RealServerId = realserverid
          @BindStatus = bindstatus
          @ProxyId = proxyid
        end

        def deserialize(params)
          @RealServerId = params['RealServerId']
          @BindStatus = params['BindStatus']
          @ProxyId = params['ProxyId']
        end
      end

      # 区域信息详情
      class RegionDetail < TencentCloud::Common::AbstractModel
        # @param RegionId: 区域ID
        # @type RegionId: String
        # @param RegionName: 区域英文名或中文名
        # @type RegionName: String

        attr_accessor :RegionId, :RegionName
        
        def initialize(regionid=nil, regionname=nil)
          @RegionId = regionid
          @RegionName = regionname
        end

        def deserialize(params)
          @RegionId = params['RegionId']
          @RegionName = params['RegionName']
        end
      end

      # RemoveRealServers请求参数结构体
      class RemoveRealServersRequest < TencentCloud::Common::AbstractModel
        # @param RealServerIds: 源站Id列表
        # @type RealServerIds: Array

        attr_accessor :RealServerIds
        
        def initialize(realserverids=nil)
          @RealServerIds = realserverids
        end

        def deserialize(params)
          @RealServerIds = params['RealServerIds']
        end
      end

      # RemoveRealServers返回参数结构体
      class RemoveRealServersResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 7层监听器转发规则健康检查相关参数
      class RuleCheckParams < TencentCloud::Common::AbstractModel
        # @param DelayLoop: 健康检查的时间间隔
        # @type DelayLoop: Integer
        # @param ConnectTimeout: 健康检查的响应超时时间
        # @type ConnectTimeout: Integer
        # @param Path: 健康检查的检查路径
        # @type Path: String
        # @param Method: 健康检查的方法，GET/HEAD
        # @type Method: String
        # @param StatusCode: 确认源站正常的返回码，可选范围[100, 200, 300, 400, 500]
        # @type StatusCode: Array
        # @param Domain: 健康检查的检查域名。
        # 当调用ModifyRuleAttribute时，不支持修改该参数。
        # @type Domain: String
        # @param FailedCountInter: 源站服务失败统计频率
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedCountInter: Integer
        # @param FailedThreshold: 源站健康性检查阀值，超过该阀值会屏蔽服务
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type FailedThreshold: Integer
        # @param BlockInter: 源站健康性检测超出阀值后，屏蔽的时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type BlockInter: Integer

        attr_accessor :DelayLoop, :ConnectTimeout, :Path, :Method, :StatusCode, :Domain, :FailedCountInter, :FailedThreshold, :BlockInter
        
        def initialize(delayloop=nil, connecttimeout=nil, path=nil, method=nil, statuscode=nil, domain=nil, failedcountinter=nil, failedthreshold=nil, blockinter=nil)
          @DelayLoop = delayloop
          @ConnectTimeout = connecttimeout
          @Path = path
          @Method = method
          @StatusCode = statuscode
          @Domain = domain
          @FailedCountInter = failedcountinter
          @FailedThreshold = failedthreshold
          @BlockInter = blockinter
        end

        def deserialize(params)
          @DelayLoop = params['DelayLoop']
          @ConnectTimeout = params['ConnectTimeout']
          @Path = params['Path']
          @Method = params['Method']
          @StatusCode = params['StatusCode']
          @Domain = params['Domain']
          @FailedCountInter = params['FailedCountInter']
          @FailedThreshold = params['FailedThreshold']
          @BlockInter = params['BlockInter']
        end
      end

      # 7层监听器转发规则信息
      class RuleInfo < TencentCloud::Common::AbstractModel
        # @param RuleId: 规则信息
        # @type RuleId: String
        # @param ListenerId: 监听器信息
        # @type ListenerId: String
        # @param Domain: 规则域名
        # @type Domain: String
        # @param Path: 规则路径
        # @type Path: String
        # @param RealServerType: 源站类型
        # @type RealServerType: String
        # @param Scheduler: 转发源站策略
        # @type Scheduler: String
        # @param HealthCheck: 是否开启健康检查标志，1表示开启，0表示关闭
        # @type HealthCheck: Integer
        # @param RuleStatus: 规则状态，0表示运行中，1表示创建中，2表示销毁中，3表示绑定解绑源站中，4表示配置更新中
        # @type RuleStatus: Integer
        # @param CheckParams: 健康检查相关参数
        # @type CheckParams: :class:`Tencentcloud::Gaap.v20180529.models.RuleCheckParams`
        # @param RealServerSet: 已绑定的源站相关信息
        # @type RealServerSet: Array
        # @param BindStatus: 源站的服务状态，0表示异常，1表示正常。
        # 未开启健康检查时，该状态始终未正常。
        # 只要有一个源站健康状态为异常时，该状态为异常，具体源站的状态请查看RealServerSet。
        # @type BindStatus: Integer
        # @param ForwardHost: 通道转发到源站的请求所携带的host，其中default表示直接转发接收到的host。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ForwardHost: String

        attr_accessor :RuleId, :ListenerId, :Domain, :Path, :RealServerType, :Scheduler, :HealthCheck, :RuleStatus, :CheckParams, :RealServerSet, :BindStatus, :ForwardHost
        
        def initialize(ruleid=nil, listenerid=nil, domain=nil, path=nil, realservertype=nil, scheduler=nil, healthcheck=nil, rulestatus=nil, checkparams=nil, realserverset=nil, bindstatus=nil, forwardhost=nil)
          @RuleId = ruleid
          @ListenerId = listenerid
          @Domain = domain
          @Path = path
          @RealServerType = realservertype
          @Scheduler = scheduler
          @HealthCheck = healthcheck
          @RuleStatus = rulestatus
          @CheckParams = checkparams
          @RealServerSet = realserverset
          @BindStatus = bindstatus
          @ForwardHost = forwardhost
        end

        def deserialize(params)
          @RuleId = params['RuleId']
          @ListenerId = params['ListenerId']
          @Domain = params['Domain']
          @Path = params['Path']
          @RealServerType = params['RealServerType']
          @Scheduler = params['Scheduler']
          @HealthCheck = params['HealthCheck']
          @RuleStatus = params['RuleStatus']
          unless params['CheckParams'].nil?
            @CheckParams = RuleCheckParams.new.deserialize(params[CheckParams])
          end
          @RealServerSet = params['RealServerSet']
          @BindStatus = params['BindStatus']
          @ForwardHost = params['ForwardHost']
        end
      end

      # 安全策略规则（入参）
      class SecurityPolicyRuleIn < TencentCloud::Common::AbstractModel
        # @param SourceCidr: 请求来源IP或IP段。
        # @type SourceCidr: String
        # @param Action: 策略：允许（ACCEPT）或拒绝（DROP）
        # @type Action: String
        # @param AliasName: 规则别名
        # @type AliasName: String
        # @param Protocol: 协议：TCP或UDP，ALL表示所有协议
        # @type Protocol: String
        # @param DestPortRange: 目标端口，填写格式举例：
        # 单个端口: 80
        # 多个端口: 80,443
        # 连续端口: 3306-20000
        # 所有端口: ALL
        # @type DestPortRange: String

        attr_accessor :SourceCidr, :Action, :AliasName, :Protocol, :DestPortRange
        
        def initialize(sourcecidr=nil, action=nil, aliasname=nil, protocol=nil, destportrange=nil)
          @SourceCidr = sourcecidr
          @Action = action
          @AliasName = aliasname
          @Protocol = protocol
          @DestPortRange = destportrange
        end

        def deserialize(params)
          @SourceCidr = params['SourceCidr']
          @Action = params['Action']
          @AliasName = params['AliasName']
          @Protocol = params['Protocol']
          @DestPortRange = params['DestPortRange']
        end
      end

      # 安全策略规则（出参）
      class SecurityPolicyRuleOut < TencentCloud::Common::AbstractModel
        # @param Action: 策略：允许（ACCEPT）或拒绝（DROP）
        # @type Action: String
        # @param SourceCidr: 请求来源Ip或Ip段
        # @type SourceCidr: String
        # @param AliasName: 规则别名
        # @type AliasName: String
        # @param DestPortRange: 目标端口范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DestPortRange: String
        # @param RuleId: 规则ID
        # @type RuleId: String
        # @param Protocol: 要匹配的协议类型（TCP/UDP）
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Protocol: String
        # @param PolicyId: 安全策略ID
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PolicyId: String

        attr_accessor :Action, :SourceCidr, :AliasName, :DestPortRange, :RuleId, :Protocol, :PolicyId
        
        def initialize(action=nil, sourcecidr=nil, aliasname=nil, destportrange=nil, ruleid=nil, protocol=nil, policyid=nil)
          @Action = action
          @SourceCidr = sourcecidr
          @AliasName = aliasname
          @DestPortRange = destportrange
          @RuleId = ruleid
          @Protocol = protocol
          @PolicyId = policyid
        end

        def deserialize(params)
          @Action = params['Action']
          @SourceCidr = params['SourceCidr']
          @AliasName = params['AliasName']
          @DestPortRange = params['DestPortRange']
          @RuleId = params['RuleId']
          @Protocol = params['Protocol']
          @PolicyId = params['PolicyId']
        end
      end

      # SetAuthentication请求参数结构体
      class SetAuthenticationRequest < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID。
        # @type ListenerId: String
        # @param Domain: 需要进行高级配置的域名，该域名为监听器下的转发规则的域名。
        # @type Domain: String
        # @param BasicAuth: 基础认证开关，其中：
        # 0，关闭基础认证；
        # 1，开启基础认证。
        # 默认为0。
        # @type BasicAuth: Integer
        # @param GaapAuth: 通道认证开关，用于源站对Gaap的认证，其中：
        # 0，关闭通道认证；
        # 1，开启通道认证。
        # 默认为0。
        # @type GaapAuth: Integer
        # @param RealServerAuth: 源站认证开关，用于Gaap对服务器的认证，其中：
        # 0，关闭源站认证；
        # 1，开启源站认证。
        # 默认为0。
        # @type RealServerAuth: Integer
        # @param BasicAuthConfId: 基础认证配置ID，从证书管理页获取。
        # @type BasicAuthConfId: String
        # @param GaapCertificateId: 通道SSL证书ID，从证书管理页获取。
        # @type GaapCertificateId: String
        # @param RealServerCertificateId: 源站CA证书ID，从证书管理页获取。源站认证时，填写该参数或RealServerCertificateId参数
        # @type RealServerCertificateId: String
        # @param RealServerCertificateDomain: 源站证书域名。
        # @type RealServerCertificateDomain: String
        # @param PolyRealServerCertificateIds: 多源站CA证书ID，从证书管理页获取。源站认证时，填写该参数或RealServerCertificateId参数
        # @type PolyRealServerCertificateIds: Array

        attr_accessor :ListenerId, :Domain, :BasicAuth, :GaapAuth, :RealServerAuth, :BasicAuthConfId, :GaapCertificateId, :RealServerCertificateId, :RealServerCertificateDomain, :PolyRealServerCertificateIds
        
        def initialize(listenerid=nil, domain=nil, basicauth=nil, gaapauth=nil, realserverauth=nil, basicauthconfid=nil, gaapcertificateid=nil, realservercertificateid=nil, realservercertificatedomain=nil, polyrealservercertificateids=nil)
          @ListenerId = listenerid
          @Domain = domain
          @BasicAuth = basicauth
          @GaapAuth = gaapauth
          @RealServerAuth = realserverauth
          @BasicAuthConfId = basicauthconfid
          @GaapCertificateId = gaapcertificateid
          @RealServerCertificateId = realservercertificateid
          @RealServerCertificateDomain = realservercertificatedomain
          @PolyRealServerCertificateIds = polyrealservercertificateids
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @Domain = params['Domain']
          @BasicAuth = params['BasicAuth']
          @GaapAuth = params['GaapAuth']
          @RealServerAuth = params['RealServerAuth']
          @BasicAuthConfId = params['BasicAuthConfId']
          @GaapCertificateId = params['GaapCertificateId']
          @RealServerCertificateId = params['RealServerCertificateId']
          @RealServerCertificateDomain = params['RealServerCertificateDomain']
          @PolyRealServerCertificateIds = params['PolyRealServerCertificateIds']
        end
      end

      # SetAuthentication返回参数结构体
      class SetAuthenticationResponse < TencentCloud::Common::AbstractModel
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :RequestId
        
        def initialize(requestid=nil)
          @RequestId = requestid
        end

        def deserialize(params)
          @RequestId = params['RequestId']
        end
      end

      # 统计数据信息
      class StatisticsDataInfo < TencentCloud::Common::AbstractModel
        # @param Time: 对应的时间点
        # @type Time: Integer
        # @param Data: 统计数据值
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Data: Float

        attr_accessor :Time, :Data
        
        def initialize(time=nil, data=nil)
          @Time = time
          @Data = data
        end

        def deserialize(params)
          @Time = params['Time']
          @Data = params['Data']
        end
      end

      # TCP类型监听器信息
      class TCPListener < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param ListenerName: 监听器名称
        # @type ListenerName: String
        # @param Port: 监听器端口
        # @type Port: Integer
        # @param RealServerPort: 监听器转发源站端口，仅对版本为1.0的通道有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealServerPort: Integer
        # @param RealServerType: 监听器绑定源站类型
        # @type RealServerType: String
        # @param Protocol: 监听器协议， TCP
        # @type Protocol: String
        # @param ListenerStatus: 监听器状态，其中：
        # 0表示运行中；
        # 1表示创建中；
        # 2表示销毁中；
        # 3表示源站调整中；
        # 4表示配置变更中。
        # @type ListenerStatus: Integer
        # @param Scheduler: 监听器源站访问策略，其中：
        # rr表示轮询；
        # wrr表示加权轮询；
        # lc表示最小连接数。
        # @type Scheduler: String
        # @param ConnectTimeout: 源站健康检查响应超时时间，单位：秒
        # @type ConnectTimeout: Integer
        # @param DelayLoop: 源站健康检查时间间隔，单位：秒
        # @type DelayLoop: Integer
        # @param HealthCheck: 监听器是否开启健康检查，其中：
        # 0表示关闭；
        # 1表示开启
        # @type HealthCheck: Integer
        # @param BindStatus: 监听器绑定的源站状态， 其中：
        # 0表示异常；
        # 1表示正常。
        # @type BindStatus: Integer
        # @param RealServerSet: 监听器绑定的源站信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealServerSet: Array
        # @param CreateTime: 监听器创建时间，Unix时间戳
        # @type CreateTime: Integer
        # @param ClientIPMethod: 监听器获取客户端 IP 的方式，0表示TOA, 1表示Proxy Protocol
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ClientIPMethod: Integer

        attr_accessor :ListenerId, :ListenerName, :Port, :RealServerPort, :RealServerType, :Protocol, :ListenerStatus, :Scheduler, :ConnectTimeout, :DelayLoop, :HealthCheck, :BindStatus, :RealServerSet, :CreateTime, :ClientIPMethod
        
        def initialize(listenerid=nil, listenername=nil, port=nil, realserverport=nil, realservertype=nil, protocol=nil, listenerstatus=nil, scheduler=nil, connecttimeout=nil, delayloop=nil, healthcheck=nil, bindstatus=nil, realserverset=nil, createtime=nil, clientipmethod=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @Port = port
          @RealServerPort = realserverport
          @RealServerType = realservertype
          @Protocol = protocol
          @ListenerStatus = listenerstatus
          @Scheduler = scheduler
          @ConnectTimeout = connecttimeout
          @DelayLoop = delayloop
          @HealthCheck = healthcheck
          @BindStatus = bindstatus
          @RealServerSet = realserverset
          @CreateTime = createtime
          @ClientIPMethod = clientipmethod
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Port = params['Port']
          @RealServerPort = params['RealServerPort']
          @RealServerType = params['RealServerType']
          @Protocol = params['Protocol']
          @ListenerStatus = params['ListenerStatus']
          @Scheduler = params['Scheduler']
          @ConnectTimeout = params['ConnectTimeout']
          @DelayLoop = params['DelayLoop']
          @HealthCheck = params['HealthCheck']
          @BindStatus = params['BindStatus']
          @RealServerSet = params['RealServerSet']
          @CreateTime = params['CreateTime']
          @ClientIPMethod = params['ClientIPMethod']
        end
      end

      # 标签键值对
      class TagPair < TencentCloud::Common::AbstractModel
        # @param TagKey: 标签键
        # @type TagKey: String
        # @param TagValue: 标签值
        # @type TagValue: String

        attr_accessor :TagKey, :TagValue
        
        def initialize(tagkey=nil, tagvalue=nil)
          @TagKey = tagkey
          @TagValue = tagvalue
        end

        def deserialize(params)
          @TagKey = params['TagKey']
          @TagValue = params['TagValue']
        end
      end

      # 标签对应资源信息
      class TagResourceInfo < TencentCloud::Common::AbstractModel
        # @param ResourceType: 资源类型，其中：
        # Proxy表示通道，
        # ProxyGroup表示通道组，
        # RealServer表示源站
        # @type ResourceType: String
        # @param ResourceId: 资源ID
        # @type ResourceId: String

        attr_accessor :ResourceType, :ResourceId
        
        def initialize(resourcetype=nil, resourceid=nil)
          @ResourceType = resourcetype
          @ResourceId = resourceid
        end

        def deserialize(params)
          @ResourceType = params['ResourceType']
          @ResourceId = params['ResourceId']
        end
      end

      # UDP类型监听器信息
      class UDPListener < TencentCloud::Common::AbstractModel
        # @param ListenerId: 监听器ID
        # @type ListenerId: String
        # @param ListenerName: 监听器名称
        # @type ListenerName: String
        # @param Port: 监听器端口
        # @type Port: Integer
        # @param RealServerPort: 监听器转发源站端口，仅V1版本通道或通道组监听器有效
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type RealServerPort: Integer
        # @param RealServerType: 监听器绑定源站类型
        # @type RealServerType: String
        # @param Protocol: 监听器协议， UDP
        # @type Protocol: String
        # @param ListenerStatus: 监听器状态，其中：
        # 0表示运行中；
        # 1表示创建中；
        # 2表示销毁中；
        # 3表示源站调整中；
        # 4表示配置变更中。
        # @type ListenerStatus: Integer
        # @param Scheduler: 监听器源站访问策略
        # @type Scheduler: String
        # @param BindStatus: 监听器绑定源站状态， 0表示正常，1表示IP异常，2表示域名解析异常
        # @type BindStatus: Integer
        # @param RealServerSet: 监听器绑定的源站信息
        # @type RealServerSet: Array
        # @param CreateTime: 监听器创建时间，Unix时间戳
        # @type CreateTime: Integer

        attr_accessor :ListenerId, :ListenerName, :Port, :RealServerPort, :RealServerType, :Protocol, :ListenerStatus, :Scheduler, :BindStatus, :RealServerSet, :CreateTime
        
        def initialize(listenerid=nil, listenername=nil, port=nil, realserverport=nil, realservertype=nil, protocol=nil, listenerstatus=nil, scheduler=nil, bindstatus=nil, realserverset=nil, createtime=nil)
          @ListenerId = listenerid
          @ListenerName = listenername
          @Port = port
          @RealServerPort = realserverport
          @RealServerType = realservertype
          @Protocol = protocol
          @ListenerStatus = listenerstatus
          @Scheduler = scheduler
          @BindStatus = bindstatus
          @RealServerSet = realserverset
          @CreateTime = createtime
        end

        def deserialize(params)
          @ListenerId = params['ListenerId']
          @ListenerName = params['ListenerName']
          @Port = params['Port']
          @RealServerPort = params['RealServerPort']
          @RealServerType = params['RealServerType']
          @Protocol = params['Protocol']
          @ListenerStatus = params['ListenerStatus']
          @Scheduler = params['Scheduler']
          @BindStatus = params['BindStatus']
          @RealServerSet = params['RealServerSet']
          @CreateTime = params['CreateTime']
        end
      end

    end
  end
end

