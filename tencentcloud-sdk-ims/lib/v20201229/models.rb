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
  module Ims
    module V20201229
      # Device结果
      class Device < TencentCloud::Common::AbstractModel
        # @param Ip: 发表消息设备IP
        # @type Ip: String
        # @param Mac: Mac地址
        # @type Mac: String
        # @param TokenId: 设备指纹Token
        # @type TokenId: String
        # @param DeviceId: 设备指纹ID
        # @type DeviceId: String
        # @param IMEI: 设备序列号
        # @type IMEI: String
        # @param IDFA: IOS设备，Identifier For Advertising（广告标识符）
        # @type IDFA: String
        # @param IDFV: IOS设备，IDFV - Identifier For Vendor（应用开发商标识符）
        # @type IDFV: String
        # @param IpType: IP地址类型 0 代表ipv4 1 代表ipv6
        # @type IpType: Integer

        attr_accessor :Ip, :Mac, :TokenId, :DeviceId, :IMEI, :IDFA, :IDFV, :IpType
        
        def initialize(ip=nil, mac=nil, tokenid=nil, deviceid=nil, imei=nil, idfa=nil, idfv=nil, iptype=nil)
          @Ip = ip
          @Mac = mac
          @TokenId = tokenid
          @DeviceId = deviceid
          @IMEI = imei
          @IDFA = idfa
          @IDFV = idfv
          @IpType = iptype
        end

        def deserialize(params)
          @Ip = params['Ip']
          @Mac = params['Mac']
          @TokenId = params['TokenId']
          @DeviceId = params['DeviceId']
          @IMEI = params['IMEI']
          @IDFA = params['IDFA']
          @IDFV = params['IDFV']
          @IpType = params['IpType']
        end
      end

      # ImageModeration请求参数结构体
      class ImageModerationRequest < TencentCloud::Common::AbstractModel
        # @param BizType: 该字段用于标识业务场景。您可以在内容安全控制台创建对应的ID，配置不同的内容审核策略，通过接口调用，默认不填为0，后端使用默认策略。 -- 该字段暂未开放。
        # @type BizType: String
        # @param DataId: 数据ID，可以由英文字母、数字、下划线、-、@#组成，不超过64个字符
        # @type DataId: String
        # @param FileContent: 数据Base64编码，图片检测接口为图片文件内容，大小不能超过5M
        # @type FileContent: String
        # @param FileUrl: 图片资源访问链接，__与FileContent参数必须二选一输入__
        # @type FileUrl: String
        # @param Interval: 截帧频率，GIF图/长图检测专用，默认值为0，表示只会检测GIF图/长图的第一帧
        # @type Interval: Integer
        # @param MaxFrames: GIF图/长图检测专用，代表均匀最大截帧数量，默认值为1（即只取GIF第一张，或长图不做切分处理（可能会造成处理超时））。
        # @type MaxFrames: Integer
        # @param User: 账号相关信息字段，填入后可识别违规风险账号。
        # @type User: :class:`Tencentcloud::Ims.v20201229.models.User`
        # @param Device: 设备相关信息字段，填入后可识别违规风险设备。
        # @type Device: :class:`Tencentcloud::Ims.v20201229.models.Device`

        attr_accessor :BizType, :DataId, :FileContent, :FileUrl, :Interval, :MaxFrames, :User, :Device
        
        def initialize(biztype=nil, dataid=nil, filecontent=nil, fileurl=nil, interval=nil, maxframes=nil, user=nil, device=nil)
          @BizType = biztype
          @DataId = dataid
          @FileContent = filecontent
          @FileUrl = fileurl
          @Interval = interval
          @MaxFrames = maxframes
          @User = user
          @Device = device
        end

        def deserialize(params)
          @BizType = params['BizType']
          @DataId = params['DataId']
          @FileContent = params['FileContent']
          @FileUrl = params['FileUrl']
          @Interval = params['Interval']
          @MaxFrames = params['MaxFrames']
          unless params['User'].nil?
            @User = User.new.deserialize(params[User])
          end
          unless params['Device'].nil?
            @Device = Device.new.deserialize(params[Device])
          end
        end
      end

      # ImageModeration返回参数结构体
      class ImageModerationResponse < TencentCloud::Common::AbstractModel
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        # @type Suggestion: String
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义图片。
        # 以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param SubLabel: 子标签名称，如色情--性行为；当未命中子标签时，返回空字符串；
        # @type SubLabel: String
        # @param Score: 机器判断当前分类的置信度，取值范围：0.00~100.00。分数越高，表示越有可能属于当前分类。
        # （如：色情 99.99，则该样本属于色情的置信度非常高。）
        # @type Score: Integer
        # @param LabelResults: 智能模型的识别结果，包括涉黄、广告等令人反感、不安全或不适宜的内容类型识别结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelResults: Array
        # @param ObjectResults: 物体检测模型的审核结果，包括实体、广告台标/二维码等物体坐标信息与内容审核信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectResults: Array
        # @param OcrResults: OCR识别后的文本识别结果，包括文本所处图片的OCR坐标信息以及图片文本的识别结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrResults: Array
        # @param LibResults: 基于图片风险库识别的结果。
        # 风险库包括不安全黑库与正常白库的结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibResults: Array
        # @param DataId: 请求参数中的DataId。
        # @type DataId: String
        # @param BizType: 您在入参时所填入的Biztype参数。 -- 该字段暂未开放。
        # @type BizType: String
        # @param Extra: 扩展字段，用于特定信息返回，不同客户/Biztype下返回信息不同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param FileMD5: 图片MD5值
        # @type FileMD5: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Suggestion, :Label, :SubLabel, :Score, :LabelResults, :ObjectResults, :OcrResults, :LibResults, :DataId, :BizType, :Extra, :FileMD5, :RequestId
        
        def initialize(suggestion=nil, label=nil, sublabel=nil, score=nil, labelresults=nil, objectresults=nil, ocrresults=nil, libresults=nil, dataid=nil, biztype=nil, extra=nil, filemd5=nil, requestid=nil)
          @Suggestion = suggestion
          @Label = label
          @SubLabel = sublabel
          @Score = score
          @LabelResults = labelresults
          @ObjectResults = objectresults
          @OcrResults = ocrresults
          @LibResults = libresults
          @DataId = dataid
          @BizType = biztype
          @Extra = extra
          @FileMD5 = filemd5
          @RequestId = requestid
        end

        def deserialize(params)
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @SubLabel = params['SubLabel']
          @Score = params['Score']
          @LabelResults = params['LabelResults']
          @ObjectResults = params['ObjectResults']
          @OcrResults = params['OcrResults']
          @LibResults = params['LibResults']
          @DataId = params['DataId']
          @BizType = params['BizType']
          @Extra = params['Extra']
          @FileMD5 = params['FileMD5']
          @RequestId = params['RequestId']
        end
      end

      # ImageRecognition请求参数结构体
      class ImageRecognitionRequest < TencentCloud::Common::AbstractModel
        # @param Channel: 渠道ID，必须与主调账号一致，由天御分配并与API调用账号绑定
        # @type Channel: Integer
        # @param CustomAppId: 产品侧腾讯云用户账号AppId
        # @type CustomAppId: String
        # @param BizType: 该字段用于标识业务场景。您可以在内容安全控制台创建对应的ID，配置不同的内容审核策略，通过接口调用，默认不填为0，后端使用默认策略。 -- 该字段暂未开放。
        # @type BizType: String
        # @param DataId: 数据ID，可以由英文字母、数字、下划线、-、@#组成，不超过64个字符
        # @type DataId: String
        # @param FileContent: 数据Base64编码，图片检测接口为图片文件内容，大小不能超过5M
        # @type FileContent: String
        # @param FileUrl: 图片资源访问链接，__与FileContent参数必须二选一输入__
        # @type FileUrl: String
        # @param Interval: 截帧频率，GIF图/长图检测专用，默认值为0，表示只会检测GIF图/长图的第一帧
        # @type Interval: Integer
        # @param MaxFrames: GIF图/长图检测专用，代表均匀最大截帧数量，默认值为1（即只取GIF第一张，或长图不做切分处理（可能会造成处理超时））。
        # @type MaxFrames: Integer
        # @param User: 账号相关信息字段，填入后可识别违规风险账号。
        # @type User: :class:`Tencentcloud::Ims.v20201229.models.User`
        # @param Device: 设备相关信息字段，填入后可识别违规风险设备。
        # @type Device: :class:`Tencentcloud::Ims.v20201229.models.Device`
        # @param CustomUin: 产品侧腾讯云用户账号Uin
        # @type CustomUin: String
        # @param CustomSubAccountUin: 产品侧腾讯云用户子账号Uin
        # @type CustomSubAccountUin: String
        # @param StreamId: 视频流ID
        # @type StreamId: String

        attr_accessor :Channel, :CustomAppId, :BizType, :DataId, :FileContent, :FileUrl, :Interval, :MaxFrames, :User, :Device, :CustomUin, :CustomSubAccountUin, :StreamId
        
        def initialize(channel=nil, customappid=nil, biztype=nil, dataid=nil, filecontent=nil, fileurl=nil, interval=nil, maxframes=nil, user=nil, device=nil, customuin=nil, customsubaccountuin=nil, streamid=nil)
          @Channel = channel
          @CustomAppId = customappid
          @BizType = biztype
          @DataId = dataid
          @FileContent = filecontent
          @FileUrl = fileurl
          @Interval = interval
          @MaxFrames = maxframes
          @User = user
          @Device = device
          @CustomUin = customuin
          @CustomSubAccountUin = customsubaccountuin
          @StreamId = streamid
        end

        def deserialize(params)
          @Channel = params['Channel']
          @CustomAppId = params['CustomAppId']
          @BizType = params['BizType']
          @DataId = params['DataId']
          @FileContent = params['FileContent']
          @FileUrl = params['FileUrl']
          @Interval = params['Interval']
          @MaxFrames = params['MaxFrames']
          unless params['User'].nil?
            @User = User.new.deserialize(params[User])
          end
          unless params['Device'].nil?
            @Device = Device.new.deserialize(params[Device])
          end
          @CustomUin = params['CustomUin']
          @CustomSubAccountUin = params['CustomSubAccountUin']
          @StreamId = params['StreamId']
        end
      end

      # ImageRecognition返回参数结构体
      class ImageRecognitionResponse < TencentCloud::Common::AbstractModel
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        # @type Suggestion: String
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义图片。
        # 以及令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param SubLabel: 子标签名称，如色情--性行为；当未命中子标签时，返回空字符串；
        # @type SubLabel: String
        # @param Score: 机器判断当前分类的置信度，取值范围：0.00~100.00。分数越高，表示越有可能属于当前分类。
        # （如：色情 99.99，则该样本属于色情的置信度非常高。）
        # @type Score: Integer
        # @param LabelResults: 智能模型的识别结果，包括涉黄、广告等令人反感、不安全或不适宜的内容类型识别结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LabelResults: Array
        # @param ObjectResults: 物体检测模型的审核结果，包括实体、广告台标/二维码等物体坐标信息与内容审核信息。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type ObjectResults: Array
        # @param OcrResults: OCR识别后的文本识别结果，包括文本所处图片的OCR坐标信息以及图片文本的识别结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type OcrResults: Array
        # @param LibResults: 基于图片风险库识别的结果。
        # 风险库包括不安全黑库与正常白库的结果。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibResults: Array
        # @param DataId: 请求参数中的DataId。
        # @type DataId: String
        # @param BizType: 您在入参时所填入的Biztype参数。 -- 该字段暂未开放。
        # @type BizType: String
        # @param Extra: 扩展字段，用于特定信息返回，不同客户/Biztype下返回信息不同。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Extra: String
        # @param FileMD5: 图片MD5值
        # @type FileMD5: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Suggestion, :Label, :SubLabel, :Score, :LabelResults, :ObjectResults, :OcrResults, :LibResults, :DataId, :BizType, :Extra, :FileMD5, :RequestId
        
        def initialize(suggestion=nil, label=nil, sublabel=nil, score=nil, labelresults=nil, objectresults=nil, ocrresults=nil, libresults=nil, dataid=nil, biztype=nil, extra=nil, filemd5=nil, requestid=nil)
          @Suggestion = suggestion
          @Label = label
          @SubLabel = sublabel
          @Score = score
          @LabelResults = labelresults
          @ObjectResults = objectresults
          @OcrResults = ocrresults
          @LibResults = libresults
          @DataId = dataid
          @BizType = biztype
          @Extra = extra
          @FileMD5 = filemd5
          @RequestId = requestid
        end

        def deserialize(params)
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @SubLabel = params['SubLabel']
          @Score = params['Score']
          @LabelResults = params['LabelResults']
          @ObjectResults = params['ObjectResults']
          @OcrResults = params['OcrResults']
          @LibResults = params['LibResults']
          @DataId = params['DataId']
          @BizType = params['BizType']
          @Extra = params['Extra']
          @FileMD5 = params['FileMD5']
          @RequestId = params['RequestId']
        end
      end

      # 分类模型命中子标签结果
      class LabelDetailItem < TencentCloud::Common::AbstractModel
        # @param Id: 序号
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Id: Integer
        # @param Name: 子标签名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Name: String
        # @param Score: 子标签分数
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Score: Integer

        attr_accessor :Id, :Name, :Score
        
        def initialize(id=nil, name=nil, score=nil)
          @Id = id
          @Name = name
          @Score = score
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Score = params['Score']
        end
      end

      # 分类模型命中结果
      class LabelResult < TencentCloud::Common::AbstractModel
        # @param Scene: 场景识别结果
        # @type Scene: String
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        # @type Suggestion: String
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义图片。
        # 以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param SubLabel: 子标签检测结果
        # @type SubLabel: String
        # @param Score: 该标签模型命中的分值
        # @type Score: Integer
        # @param Details: 分类模型命中子标签结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Details: Array

        attr_accessor :Scene, :Suggestion, :Label, :SubLabel, :Score, :Details
        
        def initialize(scene=nil, suggestion=nil, label=nil, sublabel=nil, score=nil, details=nil)
          @Scene = scene
          @Suggestion = suggestion
          @Label = label
          @SubLabel = sublabel
          @Score = score
          @Details = details
        end

        def deserialize(params)
          @Scene = params['Scene']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @SubLabel = params['SubLabel']
          @Score = params['Score']
          @Details = params['Details']
        end
      end

      # 自定义库/黑白库明细
      class LibDetail < TencentCloud::Common::AbstractModel
        # @param Id: 序号
        # @type Id: Integer
        # @param LibId: 仅当Label为Custom自定义关键词时有效，表示自定义库id
        # @type LibId: String
        # @param LibName: 仅当Label为Custom自定义关键词时有效，表示自定义库名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type LibName: String
        # @param ImageId: 图片ID
        # @type ImageId: String
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        # 以及其他其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param Tag: 自定义标签
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Tag: String
        # @param Score: 命中的模型分值
        # @type Score: Integer

        attr_accessor :Id, :LibId, :LibName, :ImageId, :Label, :Tag, :Score
        
        def initialize(id=nil, libid=nil, libname=nil, imageid=nil, label=nil, tag=nil, score=nil)
          @Id = id
          @LibId = libid
          @LibName = libname
          @ImageId = imageid
          @Label = label
          @Tag = tag
          @Score = score
        end

        def deserialize(params)
          @Id = params['Id']
          @LibId = params['LibId']
          @LibName = params['LibName']
          @ImageId = params['ImageId']
          @Label = params['Label']
          @Tag = params['Tag']
          @Score = params['Score']
        end
      end

      # 黑白库结果明细
      class LibResult < TencentCloud::Common::AbstractModel
        # @param Scene: 场景识别结果
        # @type Scene: String
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        # @type Suggestion: String
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        # 以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param SubLabel: 子标签检测结果
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type SubLabel: String
        # @param Score: 该标签模型命中的分值
        # @type Score: Integer
        # @param Details: 黑白库结果明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Details: Array

        attr_accessor :Scene, :Suggestion, :Label, :SubLabel, :Score, :Details
        
        def initialize(scene=nil, suggestion=nil, label=nil, sublabel=nil, score=nil, details=nil)
          @Scene = scene
          @Suggestion = suggestion
          @Label = label
          @SubLabel = sublabel
          @Score = score
          @Details = details
        end

        def deserialize(params)
          @Scene = params['Scene']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @SubLabel = params['SubLabel']
          @Score = params['Score']
          @Details = params['Details']
        end
      end

      # 坐标
      class Location < TencentCloud::Common::AbstractModel
        # @param X: 左上角横坐标
        # @type X: Float
        # @param Y: 左上角纵坐标
        # @type Y: Float
        # @param Width: 宽度
        # @type Width: Float
        # @param Height: 高度
        # @type Height: Float
        # @param Rotate: 检测框的旋转角度
        # @type Rotate: Float

        attr_accessor :X, :Y, :Width, :Height, :Rotate
        
        def initialize(x=nil, y=nil, width=nil, height=nil, rotate=nil)
          @X = x
          @Y = y
          @Width = width
          @Height = height
          @Rotate = rotate
        end

        def deserialize(params)
          @X = params['X']
          @Y = params['Y']
          @Width = params['Width']
          @Height = params['Height']
          @Rotate = params['Rotate']
        end
      end

      # 实体检测结果明细，当检测场景为实体、广告台标、二维码时表示模型检测目标框的标签名称、标签值、标签分数以及检测框的位置信息。
      class ObjectDetail < TencentCloud::Common::AbstractModel
        # @param Id: 序号
        # @type Id: Integer
        # @param Name: 标签名称
        # @type Name: String
        # @param Value: 标签值，
        # 当标签为二维码时，表示URL地址，如Name为QrCode时，Value为"http//abc.com/aaa"
        # @type Value: String
        # @param Score: 分数
        # @type Score: Integer
        # @param Location: 检测框坐标
        # @type Location: :class:`Tencentcloud::Ims.v20201229.models.Location`

        attr_accessor :Id, :Name, :Value, :Score, :Location
        
        def initialize(id=nil, name=nil, value=nil, score=nil, location=nil)
          @Id = id
          @Name = name
          @Value = value
          @Score = score
          @Location = location
        end

        def deserialize(params)
          @Id = params['Id']
          @Name = params['Name']
          @Value = params['Value']
          @Score = params['Score']
          unless params['Location'].nil?
            @Location = Location.new.deserialize(params[Location])
          end
        end
      end

      # 实体检测结果详情：实体、广告台标、二维码
      class ObjectResult < TencentCloud::Common::AbstractModel
        # @param Scene: 场景识别结果
        # @type Scene: String
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        # @type Suggestion: String
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义图片。
        # 以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param SubLabel: 子标签检测结果
        # @type SubLabel: String
        # @param Score: 该标签模型命中的分值
        # @type Score: Integer
        # @param Names: 实体名称
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Names: Array
        # @param Details: 实体检测结果明细
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Details: Array

        attr_accessor :Scene, :Suggestion, :Label, :SubLabel, :Score, :Names, :Details
        
        def initialize(scene=nil, suggestion=nil, label=nil, sublabel=nil, score=nil, names=nil, details=nil)
          @Scene = scene
          @Suggestion = suggestion
          @Label = label
          @SubLabel = sublabel
          @Score = score
          @Names = names
          @Details = details
        end

        def deserialize(params)
          @Scene = params['Scene']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @SubLabel = params['SubLabel']
          @Score = params['Score']
          @Names = params['Names']
          @Details = params['Details']
        end
      end

      # OCR结果检测详情
      class OcrResult < TencentCloud::Common::AbstractModel
        # @param Scene: 场景识别结果
        # @type Scene: String
        # @param Suggestion: 建议您拿到判断结果后的执行操作。
        # 建议值，Block：建议屏蔽，Review：建议复审，Pass：建议通过
        # @type Suggestion: String
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        # 以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param SubLabel: 子标签检测结果
        # @type SubLabel: String
        # @param Score: 该标签模型命中的分值
        # @type Score: Integer
        # @param Details: ocr结果详情
        # 注意：此字段可能返回 null，表示取不到有效值。
        # @type Details: Array
        # @param Text: ocr识别出的文本结果
        # @type Text: String

        attr_accessor :Scene, :Suggestion, :Label, :SubLabel, :Score, :Details, :Text
        
        def initialize(scene=nil, suggestion=nil, label=nil, sublabel=nil, score=nil, details=nil, text=nil)
          @Scene = scene
          @Suggestion = suggestion
          @Label = label
          @SubLabel = sublabel
          @Score = score
          @Details = details
          @Text = text
        end

        def deserialize(params)
          @Scene = params['Scene']
          @Suggestion = params['Suggestion']
          @Label = params['Label']
          @SubLabel = params['SubLabel']
          @Score = params['Score']
          @Details = params['Details']
          @Text = params['Text']
        end
      end

      # OCR文本结果详情
      class OcrTextDetail < TencentCloud::Common::AbstractModel
        # @param Text: OCR文本内容
        # @type Text: String
        # @param Label: 恶意标签，Normal：正常，Porn：色情，Abuse：谩骂，Ad：广告，Custom：自定义词库。
        # 以及其他令人反感、不安全或不适宜的内容类型。
        # @type Label: String
        # @param LibId: 仅当Label为Custom自定义关键词时有效，表示自定义库id
        # @type LibId: String
        # @param LibName: 仅当Label为Custom自定义关键词时有效，表示自定义库名称
        # @type LibName: String
        # @param Keywords: 该标签下命中的关键词
        # @type Keywords: Array
        # @param Score: 该标签模型命中的分值
        # @type Score: Integer
        # @param Location: OCR位置
        # @type Location: :class:`Tencentcloud::Ims.v20201229.models.Location`
        # @param Rate: OCR文本识别置信度
        # @type Rate: Integer

        attr_accessor :Text, :Label, :LibId, :LibName, :Keywords, :Score, :Location, :Rate
        
        def initialize(text=nil, label=nil, libid=nil, libname=nil, keywords=nil, score=nil, location=nil, rate=nil)
          @Text = text
          @Label = label
          @LibId = libid
          @LibName = libname
          @Keywords = keywords
          @Score = score
          @Location = location
          @Rate = rate
        end

        def deserialize(params)
          @Text = params['Text']
          @Label = params['Label']
          @LibId = params['LibId']
          @LibName = params['LibName']
          @Keywords = params['Keywords']
          @Score = params['Score']
          unless params['Location'].nil?
            @Location = Location.new.deserialize(params[Location])
          end
          @Rate = params['Rate']
        end
      end

      # User结果
      class User < TencentCloud::Common::AbstractModel
        # @param UserId: 业务用户ID 如填写，会根据账号历史恶意情况，判定消息有害结果，特别是有利于可疑恶意情况下的辅助判断。账号可以填写微信uin、QQ号、微信openid、QQopenid、字符串等。该字段和账号类别确定唯一账号。
        # @type UserId: String
        # @param AccountType: 业务用户ID类型 "1-微信uin 2-QQ号 3-微信群uin 4-qq群号 5-微信openid 6-QQopenid 7-其它string"
        # @type AccountType: String
        # @param Nickname: 用户昵称
        # @type Nickname: String
        # @param Gender: 性别 默认0 未知 1 男性 2 女性
        # @type Gender: Integer
        # @param Age: 年龄 默认0 未知
        # @type Age: Integer
        # @param Level: 用户等级，默认0 未知 1 低 2 中 3 高
        # @type Level: Integer
        # @param Phone: 手机号
        # @type Phone: String
        # @param Desc: 用户简介，长度不超过5000字
        # @type Desc: String
        # @param HeadUrl: 用户头像图片链接
        # @type HeadUrl: String

        attr_accessor :UserId, :AccountType, :Nickname, :Gender, :Age, :Level, :Phone, :Desc, :HeadUrl
        
        def initialize(userid=nil, accounttype=nil, nickname=nil, gender=nil, age=nil, level=nil, phone=nil, desc=nil, headurl=nil)
          @UserId = userid
          @AccountType = accounttype
          @Nickname = nickname
          @Gender = gender
          @Age = age
          @Level = level
          @Phone = phone
          @Desc = desc
          @HeadUrl = headurl
        end

        def deserialize(params)
          @UserId = params['UserId']
          @AccountType = params['AccountType']
          @Nickname = params['Nickname']
          @Gender = params['Gender']
          @Age = params['Age']
          @Level = params['Level']
          @Phone = params['Phone']
          @Desc = params['Desc']
          @HeadUrl = params['HeadUrl']
        end
      end

    end
  end
end
