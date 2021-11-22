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
  module Tcm
    module V20210413
      # AccessLog 配置
      class AccessLogConfig < TencentCloud::Common::AbstractModel
        # @param Enable: 是否启用
        # @type Enable: Boolean
        # @param Template: 采用的模板，可选值：istio（默认）、trace
        # @type Template: String
        # @param SelectedRange: 选中的范围
        # @type SelectedRange: :class:`Tencentcloud::Tcm.v20210413.models.SelectedRange`
        # @param CLS: 腾讯云日志服务相关参数
        # @type CLS: :class:`Tencentcloud::Tcm.v20210413.models.CLS`

        attr_accessor :Enable, :Template, :SelectedRange, :CLS
        
        def initialize(enable=nil, template=nil, selectedrange=nil, cls=nil)
          @Enable = enable
          @Template = template
          @SelectedRange = selectedrange
          @CLS = cls
        end

        def deserialize(params)
          @Enable = params['Enable']
          @Template = params['Template']
          unless params['SelectedRange'].nil?
            @SelectedRange = SelectedRange.new
            @SelectedRange.deserialize(params['SelectedRange'])
          end
          unless params['CLS'].nil?
            @CLS = CLS.new
            @CLS.deserialize(params['CLS'])
          end
        end
      end

      # 正在执行的异步操作
      class ActiveOperation < TencentCloud::Common::AbstractModel
        # @param OperationId: 操作Id
        # @type OperationId: String
        # @param Type: 操作类型，取值范围：
        # - LINK_CLUSTERS: 关联集群
        # - RELINK_CLUSTERS: 重新关联集群
        # - UNLINK_CLUSTERS: 解关联集群
        # - INSTALL_MESH: 安装网格
        # @type Type: String

        attr_accessor :OperationId, :Type
        
        def initialize(operationid=nil, type=nil)
          @OperationId = operationid
          @Type = type
        end

        def deserialize(params)
          @OperationId = params['OperationId']
          @Type = params['Type']
        end
      end

      # 描述某一网格在特定命名空间下的自动注入状态
      class AutoInjectionNamespaceState < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间名称
        # @type Namespace: String
        # @param State: 注入状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type State: String

        attr_accessor :Namespace, :State
        
        def initialize(namespace=nil, state=nil)
          @Namespace = namespace
          @State = state
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @State = params['State']
        end
      end

      # 腾讯云日志服务相关参数
      class CLS < TencentCloud::Common::AbstractModel
        # @param Enable: 是否启用
        # @type Enable: Boolean
        # @param LogSet: 日志集
        # @type LogSet: String
        # @param Topic: 日志主题
        # @type Topic: String

        attr_accessor :Enable, :LogSet, :Topic
        
        def initialize(enable=nil, logset=nil, topic=nil)
          @Enable = enable
          @LogSet = logset
          @Topic = topic
        end

        def deserialize(params)
          @Enable = params['Enable']
          @LogSet = params['LogSet']
          @Topic = params['Topic']
        end
      end

      # Mesh集群信息
      class Cluster < TencentCloud::Common::AbstractModel
        # @param ClusterId: 集群Id
        # @type ClusterId: String
        # @param Region: 地域
        # @type Region: String
        # @param Role: 集群角色，取值范围：
        # - MASTER：控制面所在的主集群
        # - REMOTE：主集群管理的远端集群
        # @type Role: String
        # @param VpcId: 私有网络Id
        # @type VpcId: String
        # @param SubnetId: 子网Id
        # @type SubnetId: String
        # @param DisplayName: 名称，只读
        # @type DisplayName: String
        # @param State: 状态，只读
        # @type State: String
        # @param LinkedTime: 关联时间，只读
        # @type LinkedTime: String
        # @param Config: 集群配置
        # @type Config: :class:`Tencentcloud::Tcm.v20210413.models.ClusterConfig`
        # @param Status: 详细状态，只读
        # @type Status: :class:`Tencentcloud::Tcm.v20210413.models.ClusterStatus`
        # @param Type: 类型，取值范围：
        # - TKE
        # - EKS
        # @type Type: String

        attr_accessor :ClusterId, :Region, :Role, :VpcId, :SubnetId, :DisplayName, :State, :LinkedTime, :Config, :Status, :Type
        
        def initialize(clusterid=nil, region=nil, role=nil, vpcid=nil, subnetid=nil, displayname=nil, state=nil, linkedtime=nil, config=nil, status=nil, type=nil)
          @ClusterId = clusterid
          @Region = region
          @Role = role
          @VpcId = vpcid
          @SubnetId = subnetid
          @DisplayName = displayname
          @State = state
          @LinkedTime = linkedtime
          @Config = config
          @Status = status
          @Type = type
        end

        def deserialize(params)
          @ClusterId = params['ClusterId']
          @Region = params['Region']
          @Role = params['Role']
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @DisplayName = params['DisplayName']
          @State = params['State']
          @LinkedTime = params['LinkedTime']
          unless params['Config'].nil?
            @Config = ClusterConfig.new
            @Config.deserialize(params['Config'])
          end
          unless params['Status'].nil?
            @Status = ClusterStatus.new
            @Status.deserialize(params['Status'])
          end
          @Type = params['Type']
        end
      end

      # 集群配置
      class ClusterConfig < TencentCloud::Common::AbstractModel
        # @param AutoInjectionNamespaceList: 自动注入SideCar的NameSpace
        # @type AutoInjectionNamespaceList: Array
        # @param IngressGatewayList: Ingress配置列表
        # @type IngressGatewayList: Array
        # @param EgressGatewayList: Egress配置列表
        # @type EgressGatewayList: Array
        # @param Istiod: Istiod配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Istiod: :class:`Tencentcloud::Tcm.v20210413.models.IstiodConfig`
        # @param DeployConfig: 部署配置
        # @type DeployConfig: :class:`Tencentcloud::Tcm.v20210413.models.DeployConfig`
        # @param AutoInjectionNamespaceStateList: 自动注入命名空间状态列表
        # @type AutoInjectionNamespaceStateList: Array

        attr_accessor :AutoInjectionNamespaceList, :IngressGatewayList, :EgressGatewayList, :Istiod, :DeployConfig, :AutoInjectionNamespaceStateList
        
        def initialize(autoinjectionnamespacelist=nil, ingressgatewaylist=nil, egressgatewaylist=nil, istiod=nil, deployconfig=nil, autoinjectionnamespacestatelist=nil)
          @AutoInjectionNamespaceList = autoinjectionnamespacelist
          @IngressGatewayList = ingressgatewaylist
          @EgressGatewayList = egressgatewaylist
          @Istiod = istiod
          @DeployConfig = deployconfig
          @AutoInjectionNamespaceStateList = autoinjectionnamespacestatelist
        end

        def deserialize(params)
          @AutoInjectionNamespaceList = params['AutoInjectionNamespaceList']
          unless params['IngressGatewayList'].nil?
            @IngressGatewayList = []
            params['IngressGatewayList'].each do |i|
              ingressgateway_tmp = IngressGateway.new
              ingressgateway_tmp.deserialize(i)
              @IngressGatewayList << ingressgateway_tmp
            end
          end
          unless params['EgressGatewayList'].nil?
            @EgressGatewayList = []
            params['EgressGatewayList'].each do |i|
              egressgateway_tmp = EgressGateway.new
              egressgateway_tmp.deserialize(i)
              @EgressGatewayList << egressgateway_tmp
            end
          end
          unless params['Istiod'].nil?
            @Istiod = IstiodConfig.new
            @Istiod.deserialize(params['Istiod'])
          end
          unless params['DeployConfig'].nil?
            @DeployConfig = DeployConfig.new
            @DeployConfig.deserialize(params['DeployConfig'])
          end
          unless params['AutoInjectionNamespaceStateList'].nil?
            @AutoInjectionNamespaceStateList = []
            params['AutoInjectionNamespaceStateList'].each do |i|
              autoinjectionnamespacestate_tmp = AutoInjectionNamespaceState.new
              autoinjectionnamespacestate_tmp.deserialize(i)
              @AutoInjectionNamespaceStateList << autoinjectionnamespacestate_tmp
            end
          end
        end
      end

      # 集群状态
      class ClusterStatus < TencentCloud::Common::AbstractModel
        # @param LinkState: 关联状态，取值范围：
        # - LINKING: 关联中
        # - LINKED: 已关联
        # - UNLINKING: 解关联中
        # - LINK_FAILED: 关联失败
        # - UNLINK_FAILED: 解关联失败
        # @type LinkState: String
        # @param LinkErrorDetail: 关联错误详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LinkErrorDetail: String

        attr_accessor :LinkState, :LinkErrorDetail
        
        def initialize(linkstate=nil, linkerrordetail=nil)
          @LinkState = linkstate
          @LinkErrorDetail = linkerrordetail
        end

        def deserialize(params)
          @LinkState = params['LinkState']
          @LinkErrorDetail = params['LinkErrorDetail']
        end
      end

      # 部署配置
      class DeployConfig < TencentCloud::Common::AbstractModel
        # @param NodeSelectType: 部署类型，取值范围：
        # - SPECIFIC：专有模式
        # - AUTO：普通模式
        # @type NodeSelectType: String
        # @param Nodes: 指定的节点
        # @type Nodes: Array

        attr_accessor :NodeSelectType, :Nodes
        
        def initialize(nodeselecttype=nil, nodes=nil)
          @NodeSelectType = nodeselecttype
          @Nodes = nodes
        end

        def deserialize(params)
          @NodeSelectType = params['NodeSelectType']
          @Nodes = params['Nodes']
        end
      end

      # DescribeMeshList请求参数结构体
      class DescribeMeshListRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param Limit: 分页限制
        # @type Limit: Integer
        # @param Offset: 分页偏移
        # @type Offset: Integer

        attr_accessor :Filters, :Limit, :Offset
        
        def initialize(filters=nil, limit=nil, offset=nil)
          @Filters = filters
          @Limit = limit
          @Offset = offset
        end

        def deserialize(params)
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
          @Limit = params['Limit']
          @Offset = params['Offset']
        end
      end

      # DescribeMeshList返回参数结构体
      class DescribeMeshListResponse < TencentCloud::Common::AbstractModel
        # @param MeshList: 查询到的网格信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type MeshList: Array
        # @param Total: 总数
        # @type Total: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :MeshList, :Total, :RequestId
        
        def initialize(meshlist=nil, total=nil, requestid=nil)
          @MeshList = meshlist
          @Total = total
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['MeshList'].nil?
            @MeshList = []
            params['MeshList'].each do |i|
              mesh_tmp = Mesh.new
              mesh_tmp.deserialize(i)
              @MeshList << mesh_tmp
            end
          end
          @Total = params['Total']
          @RequestId = params['RequestId']
        end
      end

      # DescribeMesh请求参数结构体
      class DescribeMeshRequest < TencentCloud::Common::AbstractModel
        # @param MeshId: 需要查询的网格 Id
        # @type MeshId: String

        attr_accessor :MeshId
        
        def initialize(meshid=nil)
          @MeshId = meshid
        end

        def deserialize(params)
          @MeshId = params['MeshId']
        end
      end

      # DescribeMesh返回参数结构体
      class DescribeMeshResponse < TencentCloud::Common::AbstractModel
        # @param Mesh: Mesh详细信息
        # @type Mesh: :class:`Tencentcloud::Tcm.v20210413.models.Mesh`
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Mesh, :RequestId
        
        def initialize(mesh=nil, requestid=nil)
          @Mesh = mesh
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Mesh'].nil?
            @Mesh = Mesh.new
            @Mesh.deserialize(params['Mesh'])
          end
          @RequestId = params['RequestId']
        end
      end

      # Egress配置
      class EgressGateway < TencentCloud::Common::AbstractModel
        # @param Name: Egress名称
        # @type Name: String
        # @param Namespace: 所在的Namespace
        # @type Namespace: String
        # @param Workload: 工作负载配置
        # @type Workload: :class:`Tencentcloud::Tcm.v20210413.models.WorkloadConfig`

        attr_accessor :Name, :Namespace, :Workload
        
        def initialize(name=nil, namespace=nil, workload=nil)
          @Name = name
          @Namespace = namespace
          @Workload = workload
        end

        def deserialize(params)
          @Name = params['Name']
          @Namespace = params['Namespace']
          unless params['Workload'].nil?
            @Workload = WorkloadConfig.new
            @Workload.deserialize(params['Workload'])
          end
        end
      end

      # 键值对过滤器，用于条件过滤查询。例如过滤ID、名称等
      class Filter < TencentCloud::Common::AbstractModel
        # @param Name: 需要过滤的字段。
        # @type Name: String
        # @param Values: 字段的过滤值。
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

      # Grafana信息
      class GrafanaInfo < TencentCloud::Common::AbstractModel
        # @param Enabled: 是否开启
        # @type Enabled: Boolean
        # @param InternalURL: 内网地址
        # @type InternalURL: String
        # @param PublicURL: 公网地址
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicURL: String
        # @param PublicFailedReason: 公网失败原因
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicFailedReason: String
        # @param PublicFailedMessage: 公网失败详细信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type PublicFailedMessage: String

        attr_accessor :Enabled, :InternalURL, :PublicURL, :PublicFailedReason, :PublicFailedMessage
        
        def initialize(enabled=nil, internalurl=nil, publicurl=nil, publicfailedreason=nil, publicfailedmessage=nil)
          @Enabled = enabled
          @InternalURL = internalurl
          @PublicURL = publicurl
          @PublicFailedReason = publicfailedreason
          @PublicFailedMessage = publicfailedmessage
        end

        def deserialize(params)
          @Enabled = params['Enabled']
          @InternalURL = params['InternalURL']
          @PublicURL = params['PublicURL']
          @PublicFailedReason = params['PublicFailedReason']
          @PublicFailedMessage = params['PublicFailedMessage']
        end
      end

      # HPA 配置
      class HorizontalPodAutoscalerSpec < TencentCloud::Common::AbstractModel
        # @param MinReplicas: 最小副本数
        # @type MinReplicas: Integer
        # @param MaxReplicas: 最大副本数
        # @type MaxReplicas: Integer
        # @param Metrics: 用于计算副本数的指标
        # @type Metrics: Array

        attr_accessor :MinReplicas, :MaxReplicas, :Metrics
        
        def initialize(minreplicas=nil, maxreplicas=nil, metrics=nil)
          @MinReplicas = minreplicas
          @MaxReplicas = maxreplicas
          @Metrics = metrics
        end

        def deserialize(params)
          @MinReplicas = params['MinReplicas']
          @MaxReplicas = params['MaxReplicas']
          unless params['Metrics'].nil?
            @Metrics = []
            params['Metrics'].each do |i|
              metricspec_tmp = MetricSpec.new
              metricspec_tmp.deserialize(i)
              @Metrics << metricspec_tmp
            end
          end
        end
      end

      # IngressGateway 实例信息
      class IngressGateway < TencentCloud::Common::AbstractModel
        # @param Name: IngressGateway 实例名字
        # @type Name: String
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param ClusterId: 集群 ID
        # @type ClusterId: String
        # @param Service: Service 配置
        # @type Service: :class:`Tencentcloud::Tcm.v20210413.models.Service`
        # @param Workload: Workload 配置
        # @type Workload: :class:`Tencentcloud::Tcm.v20210413.models.WorkloadConfig`
        # @param LoadBalancer: 负载均衡配置，自动创建 CLB 时返回
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LoadBalancer: :class:`Tencentcloud::Tcm.v20210413.models.LoadBalancer`
        # @param Status: IngressGateway 状态信息，只读
        # @type Status: :class:`Tencentcloud::Tcm.v20210413.models.IngressGatewayStatus`
        # @param LoadBalancerId: 负载均衡实例ID，使用已有 CLB 时返回
        # @type LoadBalancerId: String

        attr_accessor :Name, :Namespace, :ClusterId, :Service, :Workload, :LoadBalancer, :Status, :LoadBalancerId
        
        def initialize(name=nil, namespace=nil, clusterid=nil, service=nil, workload=nil, loadbalancer=nil, status=nil, loadbalancerid=nil)
          @Name = name
          @Namespace = namespace
          @ClusterId = clusterid
          @Service = service
          @Workload = workload
          @LoadBalancer = loadbalancer
          @Status = status
          @LoadBalancerId = loadbalancerid
        end

        def deserialize(params)
          @Name = params['Name']
          @Namespace = params['Namespace']
          @ClusterId = params['ClusterId']
          unless params['Service'].nil?
            @Service = Service.new
            @Service.deserialize(params['Service'])
          end
          unless params['Workload'].nil?
            @Workload = WorkloadConfig.new
            @Workload.deserialize(params['Workload'])
          end
          unless params['LoadBalancer'].nil?
            @LoadBalancer = LoadBalancer.new
            @LoadBalancer.deserialize(params['LoadBalancer'])
          end
          unless params['Status'].nil?
            @Status = IngressGatewayStatus.new
            @Status.deserialize(params['Status'])
          end
          @LoadBalancerId = params['LoadBalancerId']
        end
      end

      # IngressGateway状态
      class IngressGatewayStatus < TencentCloud::Common::AbstractModel
        # @param LoadBalancer: 负载均衡实例状态
        # @type LoadBalancer: :class:`Tencentcloud::Tcm.v20210413.models.LoadBalancerStatus`

        attr_accessor :LoadBalancer
        
        def initialize(loadbalancer=nil)
          @LoadBalancer = loadbalancer
        end

        def deserialize(params)
          unless params['LoadBalancer'].nil?
            @LoadBalancer = LoadBalancerStatus.new
            @LoadBalancer.deserialize(params['LoadBalancer'])
          end
        end
      end

      # 自动注入配置
      class InjectConfig < TencentCloud::Common::AbstractModel
        # @param ExcludeIPRanges: 不需要进行代理的 ip 地址范围
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ExcludeIPRanges: Array
        # @param HoldApplicationUntilProxyStarts: 是否等待sidecar启动
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type HoldApplicationUntilProxyStarts: Boolean

        attr_accessor :ExcludeIPRanges, :HoldApplicationUntilProxyStarts
        
        def initialize(excludeipranges=nil, holdapplicationuntilproxystarts=nil)
          @ExcludeIPRanges = excludeipranges
          @HoldApplicationUntilProxyStarts = holdapplicationuntilproxystarts
        end

        def deserialize(params)
          @ExcludeIPRanges = params['ExcludeIPRanges']
          @HoldApplicationUntilProxyStarts = params['HoldApplicationUntilProxyStarts']
        end
      end

      # Istio配置
      class IstioConfig < TencentCloud::Common::AbstractModel
        # @param OutboundTrafficPolicy: 外部流量策略
        # @type OutboundTrafficPolicy: String
        # @param Tracing: 调用链配置
        # @type Tracing: :class:`Tencentcloud::Tcm.v20210413.models.TracingConfig`
        # @param DisablePolicyChecks: 禁用策略检查功能
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type DisablePolicyChecks: Boolean

        attr_accessor :OutboundTrafficPolicy, :Tracing, :DisablePolicyChecks
        
        def initialize(outboundtrafficpolicy=nil, tracing=nil, disablepolicychecks=nil)
          @OutboundTrafficPolicy = outboundtrafficpolicy
          @Tracing = tracing
          @DisablePolicyChecks = disablepolicychecks
        end

        def deserialize(params)
          @OutboundTrafficPolicy = params['OutboundTrafficPolicy']
          unless params['Tracing'].nil?
            @Tracing = TracingConfig.new
            @Tracing.deserialize(params['Tracing'])
          end
          @DisablePolicyChecks = params['DisablePolicyChecks']
        end
      end

      # Istiod配置
      class IstiodConfig < TencentCloud::Common::AbstractModel
        # @param Workload: 工作负载配置
        # @type Workload: :class:`Tencentcloud::Tcm.v20210413.models.WorkloadConfig`

        attr_accessor :Workload
        
        def initialize(workload=nil)
          @Workload = workload
        end

        def deserialize(params)
          unless params['Workload'].nil?
            @Workload = WorkloadConfig.new
            @Workload.deserialize(params['Workload'])
          end
        end
      end

      # 负载均衡配置
      class LoadBalancer < TencentCloud::Common::AbstractModel
        # @param LoadBalancerType: 负载均衡实例的网络类型：
        # OPEN：公网属性， INTERNAL：内网属性。
        # 只读。
        # @type LoadBalancerType: String
        # @param SubnetId: 负载均衡实例所在的子网（仅对内网VPC型LB有意义），只读。
        # @type SubnetId: String
        # @param InternetChargeType: TRAFFIC_POSTPAID_BY_HOUR 按流量按小时后计费 ; BANDWIDTH_POSTPAID_BY_HOUR 按带宽按小时后计费;只读。
        # @type InternetChargeType: String
        # @param InternetMaxBandwidthOut: 最大出带宽，单位Mbps，范围支持0到2048，仅对公网属性的LB生效，默认值 10
        # @type InternetMaxBandwidthOut: Integer

        attr_accessor :LoadBalancerType, :SubnetId, :InternetChargeType, :InternetMaxBandwidthOut
        
        def initialize(loadbalancertype=nil, subnetid=nil, internetchargetype=nil, internetmaxbandwidthout=nil)
          @LoadBalancerType = loadbalancertype
          @SubnetId = subnetid
          @InternetChargeType = internetchargetype
          @InternetMaxBandwidthOut = internetmaxbandwidthout
        end

        def deserialize(params)
          @LoadBalancerType = params['LoadBalancerType']
          @SubnetId = params['SubnetId']
          @InternetChargeType = params['InternetChargeType']
          @InternetMaxBandwidthOut = params['InternetMaxBandwidthOut']
        end
      end

      # 负载均衡状态信息
      class LoadBalancerStatus < TencentCloud::Common::AbstractModel
        # @param LoadBalancerId: 负载均衡实例 ID
        # @type LoadBalancerId: String
        # @param LoadBalancerName: 负载均衡实例名字
        # @type LoadBalancerName: String
        # @param LoadBalancerVip: 负载均衡实例 VIP
        # @type LoadBalancerVip: String

        attr_accessor :LoadBalancerId, :LoadBalancerName, :LoadBalancerVip
        
        def initialize(loadbalancerid=nil, loadbalancername=nil, loadbalancervip=nil)
          @LoadBalancerId = loadbalancerid
          @LoadBalancerName = loadbalancername
          @LoadBalancerVip = loadbalancervip
        end

        def deserialize(params)
          @LoadBalancerId = params['LoadBalancerId']
          @LoadBalancerName = params['LoadBalancerName']
          @LoadBalancerVip = params['LoadBalancerVip']
        end
      end

      # Mesh信息
      class Mesh < TencentCloud::Common::AbstractModel
        # @param MeshId: Mesh实例Id
        # @type MeshId: String
        # @param DisplayName: Mesh名称
        # @type DisplayName: String
        # @param Type: Mesh类型，取值范围：
        # - STANDALONE：独立网格
        # - HOSTED：托管网格
        # @type Type: String
        # @param Region: 地域
        # @type Region: String
        # @param Version: 版本
        # @type Version: String
        # @param State: Mesh状态，取值范围：
        # - PENDING：等待中
        # - CREATING：创建中
        # - RUNNING：运行中
        # - ABNORMAL：异常
        # - UPGRADING：升级中
        # - CANARY_UPGRADED：升级灰度完成
        # - ROLLBACKING：升级回滚
        # - DELETING：删除中
        # - CREATE_FAILED：安装失败
        # - DELETE_FAILED：删除失败
        # - UPGRADE_FAILED：升级失败
        # - ROLLBACK_FAILED：回滚失败
        # @type State: String
        # @param CreatedTime: 创建时间
        # @type CreatedTime: String
        # @param UpdatedTime: 修改时间
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type UpdatedTime: String
        # @param ClusterList: 集群列表
        # @type ClusterList: Array
        # @param Config: Mesh配置
        # @type Config: :class:`Tencentcloud::Tcm.v20210413.models.MeshConfig`
        # @param Status: Mesh详细状态
        # @type Status: :class:`Tencentcloud::Tcm.v20210413.models.MeshStatus`

        attr_accessor :MeshId, :DisplayName, :Type, :Region, :Version, :State, :CreatedTime, :UpdatedTime, :ClusterList, :Config, :Status
        
        def initialize(meshid=nil, displayname=nil, type=nil, region=nil, version=nil, state=nil, createdtime=nil, updatedtime=nil, clusterlist=nil, config=nil, status=nil)
          @MeshId = meshid
          @DisplayName = displayname
          @Type = type
          @Region = region
          @Version = version
          @State = state
          @CreatedTime = createdtime
          @UpdatedTime = updatedtime
          @ClusterList = clusterlist
          @Config = config
          @Status = status
        end

        def deserialize(params)
          @MeshId = params['MeshId']
          @DisplayName = params['DisplayName']
          @Type = params['Type']
          @Region = params['Region']
          @Version = params['Version']
          @State = params['State']
          @CreatedTime = params['CreatedTime']
          @UpdatedTime = params['UpdatedTime']
          unless params['ClusterList'].nil?
            @ClusterList = []
            params['ClusterList'].each do |i|
              cluster_tmp = Cluster.new
              cluster_tmp.deserialize(i)
              @ClusterList << cluster_tmp
            end
          end
          unless params['Config'].nil?
            @Config = MeshConfig.new
            @Config.deserialize(params['Config'])
          end
          unless params['Status'].nil?
            @Status = MeshStatus.new
            @Status.deserialize(params['Status'])
          end
        end
      end

      # 网格配置项
      class MeshConfig < TencentCloud::Common::AbstractModel
        # @param Istio: Istio配置
        # @type Istio: :class:`Tencentcloud::Tcm.v20210413.models.IstioConfig`
        # @param AccessLog: AccessLog配置
        # @type AccessLog: :class:`Tencentcloud::Tcm.v20210413.models.AccessLogConfig`
        # @param Prometheus: Prometheus配置
        # @type Prometheus: :class:`Tencentcloud::Tcm.v20210413.models.PrometheusConfig`
        # @param Inject: 自动注入配置
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Inject: :class:`Tencentcloud::Tcm.v20210413.models.InjectConfig`

        attr_accessor :Istio, :AccessLog, :Prometheus, :Inject
        
        def initialize(istio=nil, accesslog=nil, prometheus=nil, inject=nil)
          @Istio = istio
          @AccessLog = accesslog
          @Prometheus = prometheus
          @Inject = inject
        end

        def deserialize(params)
          unless params['Istio'].nil?
            @Istio = IstioConfig.new
            @Istio.deserialize(params['Istio'])
          end
          unless params['AccessLog'].nil?
            @AccessLog = AccessLogConfig.new
            @AccessLog.deserialize(params['AccessLog'])
          end
          unless params['Prometheus'].nil?
            @Prometheus = PrometheusConfig.new
            @Prometheus.deserialize(params['Prometheus'])
          end
          unless params['Inject'].nil?
            @Inject = InjectConfig.new
            @Inject.deserialize(params['Inject'])
          end
        end
      end

      # Mesh当前状态
      class MeshStatus < TencentCloud::Common::AbstractModel
        # @param ServiceCount: 服务数量
        # @type ServiceCount: Integer
        # @param CanaryVersion: 灰度升级的版本
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type CanaryVersion: String
        # @param Prometheus: Prometheus状态
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Prometheus: Array
        # @param StateMessage: 状态附带信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type StateMessage: String
        # @param ActiveOperationList: 正在执行的异步操作
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ActiveOperationList: Array

        attr_accessor :ServiceCount, :CanaryVersion, :Prometheus, :StateMessage, :ActiveOperationList
        
        def initialize(servicecount=nil, canaryversion=nil, prometheus=nil, statemessage=nil, activeoperationlist=nil)
          @ServiceCount = servicecount
          @CanaryVersion = canaryversion
          @Prometheus = prometheus
          @StateMessage = statemessage
          @ActiveOperationList = activeoperationlist
        end

        def deserialize(params)
          @ServiceCount = params['ServiceCount']
          @CanaryVersion = params['CanaryVersion']
          unless params['Prometheus'].nil?
            @Prometheus = []
            params['Prometheus'].each do |i|
              prometheusstatus_tmp = PrometheusStatus.new
              prometheusstatus_tmp.deserialize(i)
              @Prometheus << prometheusstatus_tmp
            end
          end
          @StateMessage = params['StateMessage']
          unless params['ActiveOperationList'].nil?
            @ActiveOperationList = []
            params['ActiveOperationList'].each do |i|
              activeoperation_tmp = ActiveOperation.new
              activeoperation_tmp.deserialize(i)
              @ActiveOperationList << activeoperation_tmp
            end
          end
        end
      end

      # MetricSpec 描述如何通过指定指标进行自动扩缩容
      class MetricSpec < TencentCloud::Common::AbstractModel
        # @param Type: 指标来源类型，支持 Pods/Resource
        # @type Type: String
        # @param Pods: 使用自定义指标扩进行自动扩缩容
        # @type Pods: :class:`Tencentcloud::Tcm.v20210413.models.PodsMetricSource`
        # @param Resource: 使用资源指标扩进行自动扩缩容
        # @type Resource: :class:`Tencentcloud::Tcm.v20210413.models.ResourceMetricSource`

        attr_accessor :Type, :Pods, :Resource
        
        def initialize(type=nil, pods=nil, resource=nil)
          @Type = type
          @Pods = pods
          @Resource = resource
        end

        def deserialize(params)
          @Type = params['Type']
          unless params['Pods'].nil?
            @Pods = PodsMetricSource.new
            @Pods.deserialize(params['Pods'])
          end
          unless params['Resource'].nil?
            @Resource = ResourceMetricSource.new
            @Resource.deserialize(params['Resource'])
          end
        end
      end

      # PodsMetricSource 定义了如何根据特定指标进行扩缩容
      class PodsMetricSource < TencentCloud::Common::AbstractModel
        # @param MetricName: 指标名
        # @type MetricName: String
        # @param TargetAverageValue: 目标值
        # @type TargetAverageValue: String

        attr_accessor :MetricName, :TargetAverageValue
        
        def initialize(metricname=nil, targetaveragevalue=nil)
          @MetricName = metricname
          @TargetAverageValue = targetaveragevalue
        end

        def deserialize(params)
          @MetricName = params['MetricName']
          @TargetAverageValue = params['TargetAverageValue']
        end
      end

      # Prometheus 配置
      class PrometheusConfig < TencentCloud::Common::AbstractModel
        # @param VpcId: 虚拟网络Id
        # @type VpcId: String
        # @param SubnetId: 子网Id
        # @type SubnetId: String
        # @param Region: 地域
        # @type Region: String
        # @param InstanceId: 关联已存在实例Id，不填则默认创建
        # @type InstanceId: String

        attr_accessor :VpcId, :SubnetId, :Region, :InstanceId
        
        def initialize(vpcid=nil, subnetid=nil, region=nil, instanceid=nil)
          @VpcId = vpcid
          @SubnetId = subnetid
          @Region = region
          @InstanceId = instanceid
        end

        def deserialize(params)
          @VpcId = params['VpcId']
          @SubnetId = params['SubnetId']
          @Region = params['Region']
          @InstanceId = params['InstanceId']
        end
      end

      # Prometheus状态信息
      class PrometheusStatus < TencentCloud::Common::AbstractModel
        # @param PrometheusId: Prometheus Id
        # @type PrometheusId: String
        # @param DisplayName: 展示名称
        # @type DisplayName: String
        # @param InstanceId: 实例Id
        # @type InstanceId: String
        # @param VpcId: 虚拟网络Id
        # @type VpcId: String
        # @param State: 状态
        # @type State: String
        # @param Region: 地区
        # @type Region: String
        # @param Grafana: Grafana信息
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Grafana: :class:`Tencentcloud::Tcm.v20210413.models.GrafanaInfo`

        attr_accessor :PrometheusId, :DisplayName, :InstanceId, :VpcId, :State, :Region, :Grafana
        
        def initialize(prometheusid=nil, displayname=nil, instanceid=nil, vpcid=nil, state=nil, region=nil, grafana=nil)
          @PrometheusId = prometheusid
          @DisplayName = displayname
          @InstanceId = instanceid
          @VpcId = vpcid
          @State = state
          @Region = region
          @Grafana = grafana
        end

        def deserialize(params)
          @PrometheusId = params['PrometheusId']
          @DisplayName = params['DisplayName']
          @InstanceId = params['InstanceId']
          @VpcId = params['VpcId']
          @State = params['State']
          @Region = params['Region']
          unless params['Grafana'].nil?
            @Grafana = GrafanaInfo.new
            @Grafana.deserialize(params['Grafana'])
          end
        end
      end

      # Resource 定义了资源类型和数量
      class Resource < TencentCloud::Common::AbstractModel
        # @param Name: 资源类型 cpu/memory
        # @type Name: String
        # @param Quantity: 资源数量
        # @type Quantity: String

        attr_accessor :Name, :Quantity
        
        def initialize(name=nil, quantity=nil)
          @Name = name
          @Quantity = quantity
        end

        def deserialize(params)
          @Name = params['Name']
          @Quantity = params['Quantity']
        end
      end

      # ResourceMetricSource 定义了如何根据已知类型的资源指标进行扩缩容
      class ResourceMetricSource < TencentCloud::Common::AbstractModel
        # @param Name: 资源名称 cpu/memory
        # @type Name: String
        # @param TargetAverageUtilization: 目标平均利用率
        # @type TargetAverageUtilization: Integer
        # @param TargetAverageValue: 目标平均值
        # @type TargetAverageValue: String

        attr_accessor :Name, :TargetAverageUtilization, :TargetAverageValue
        
        def initialize(name=nil, targetaverageutilization=nil, targetaveragevalue=nil)
          @Name = name
          @TargetAverageUtilization = targetaverageutilization
          @TargetAverageValue = targetaveragevalue
        end

        def deserialize(params)
          @Name = params['Name']
          @TargetAverageUtilization = params['TargetAverageUtilization']
          @TargetAverageValue = params['TargetAverageValue']
        end
      end

      # ResourceRequirements 描述了计算资源需求。
      class ResourceRequirements < TencentCloud::Common::AbstractModel
        # @param Limits: Limits 描述了允许的最大计算资源量。
        # @type Limits: Array
        # @param Requests: Requests 描述所需的最小计算资源量。
        # @type Requests: Array

        attr_accessor :Limits, :Requests
        
        def initialize(limits=nil, requests=nil)
          @Limits = limits
          @Requests = requests
        end

        def deserialize(params)
          unless params['Limits'].nil?
            @Limits = []
            params['Limits'].each do |i|
              resource_tmp = Resource.new
              resource_tmp.deserialize(i)
              @Limits << resource_tmp
            end
          end
          unless params['Requests'].nil?
            @Requests = []
            params['Requests'].each do |i|
              resource_tmp = Resource.new
              resource_tmp.deserialize(i)
              @Requests << resource_tmp
            end
          end
        end
      end

      # 选中的项目
      class SelectedItems < TencentCloud::Common::AbstractModel
        # @param Namespace: 命名空间
        # @type Namespace: String
        # @param ClusterName: 集群名称
        # @type ClusterName: String
        # @param ItemName: 选中项目名字
        # @type ItemName: String
        # @param Gateways: ingress gw的名称列表
        # @type Gateways: Array

        attr_accessor :Namespace, :ClusterName, :ItemName, :Gateways
        
        def initialize(namespace=nil, clustername=nil, itemname=nil, gateways=nil)
          @Namespace = namespace
          @ClusterName = clustername
          @ItemName = itemname
          @Gateways = gateways
        end

        def deserialize(params)
          @Namespace = params['Namespace']
          @ClusterName = params['ClusterName']
          @ItemName = params['ItemName']
          @Gateways = params['Gateways']
        end
      end

      # 被选中的范围
      class SelectedRange < TencentCloud::Common::AbstractModel
        # @param Items: 选中的项目详细内容
        # @type Items: Array
        # @param All: 是否全选
        # @type All: Boolean

        attr_accessor :Items, :All
        
        def initialize(items=nil, all=nil)
          @Items = items
          @All = all
        end

        def deserialize(params)
          unless params['Items'].nil?
            @Items = []
            params['Items'].each do |i|
              selecteditems_tmp = SelectedItems.new
              selecteditems_tmp.deserialize(i)
              @Items << selecteditems_tmp
            end
          end
          @All = params['All']
        end
      end

      # Service信息
      class Service < TencentCloud::Common::AbstractModel
        # @param Type: ClusterIP/NodePort/LoadBalancer
        # @type Type: String
        # @param CLBDirectAccess: 是否开启LB直通Pod
        # @type CLBDirectAccess: Boolean
        # @param ExternalTrafficPolicy: 服务是否希望将外部流量路由到节点本地或集群范围的端点。 有两个可用选项：Cluster（默认）和 Local。Cluster 隐藏了客户端源 IP，可能导致第二跳到另一个节点；Local 保留客户端源 IP 并避免 LoadBalancer 和 NodePort 类型服务的第二跳。
        # @type ExternalTrafficPolicy: String

        attr_accessor :Type, :CLBDirectAccess, :ExternalTrafficPolicy
        
        def initialize(type=nil, clbdirectaccess=nil, externaltrafficpolicy=nil)
          @Type = type
          @CLBDirectAccess = clbdirectaccess
          @ExternalTrafficPolicy = externaltrafficpolicy
        end

        def deserialize(params)
          @Type = params['Type']
          @CLBDirectAccess = params['CLBDirectAccess']
          @ExternalTrafficPolicy = params['ExternalTrafficPolicy']
        end
      end

      # 调用链配置
      class TracingConfig < TencentCloud::Common::AbstractModel
        # @param Sampling: 调用链采样率，百分比
        # @type Sampling: Float

        attr_accessor :Sampling
        
        def initialize(sampling=nil)
          @Sampling = sampling
        end

        def deserialize(params)
          @Sampling = params['Sampling']
        end
      end

      # 工作负载配置
      class WorkloadConfig < TencentCloud::Common::AbstractModel
        # @param Replicas: 工作副本数
        # @type Replicas: Integer
        # @param Resources: 资源限制
        # @type Resources: :class:`Tencentcloud::Tcm.v20210413.models.ResourceRequirements`
        # @param HorizontalPodAutoscaler: HPA策略
        # @type HorizontalPodAutoscaler: :class:`Tencentcloud::Tcm.v20210413.models.HorizontalPodAutoscalerSpec`
        # @param SelectedNodeList: 部署到指定节点
        # @type SelectedNodeList: Array

        attr_accessor :Replicas, :Resources, :HorizontalPodAutoscaler, :SelectedNodeList
        
        def initialize(replicas=nil, resources=nil, horizontalpodautoscaler=nil, selectednodelist=nil)
          @Replicas = replicas
          @Resources = resources
          @HorizontalPodAutoscaler = horizontalpodautoscaler
          @SelectedNodeList = selectednodelist
        end

        def deserialize(params)
          @Replicas = params['Replicas']
          unless params['Resources'].nil?
            @Resources = ResourceRequirements.new
            @Resources.deserialize(params['Resources'])
          end
          unless params['HorizontalPodAutoscaler'].nil?
            @HorizontalPodAutoscaler = HorizontalPodAutoscalerSpec.new
            @HorizontalPodAutoscaler.deserialize(params['HorizontalPodAutoscaler'])
          end
          @SelectedNodeList = params['SelectedNodeList']
        end
      end

    end
  end
end
