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
  module Bma
    module V20210624
      # 商标信息
      class BrandData < TencentCloud::Common::AbstractModel
        # @param BrandName: xxx
        # @type BrandName: String
        # @param BrandCertificateName: xxx
        # @type BrandCertificateName: String
        # @param BrandStatus: xxx
        # @type BrandStatus: Integer
        # @param BrandNote: xxx
        # @type BrandNote: String
        # @param TransferName: xxx
        # @type TransferName: String
        # @param TransferStatus: xxx
        # @type TransferStatus: Integer
        # @param TransferNote: xxx
        # @type TransferNote: String

        attr_accessor :BrandName, :BrandCertificateName, :BrandStatus, :BrandNote, :TransferName, :TransferStatus, :TransferNote
        
        def initialize(brandname=nil, brandcertificatename=nil, brandstatus=nil, brandnote=nil, transfername=nil, transferstatus=nil, transfernote=nil)
          @BrandName = brandname
          @BrandCertificateName = brandcertificatename
          @BrandStatus = brandstatus
          @BrandNote = brandnote
          @TransferName = transfername
          @TransferStatus = transferstatus
          @TransferNote = transfernote
        end

        def deserialize(params)
          @BrandName = params['BrandName']
          @BrandCertificateName = params['BrandCertificateName']
          @BrandStatus = params['BrandStatus']
          @BrandNote = params['BrandNote']
          @TransferName = params['TransferName']
          @TransferStatus = params['TransferStatus']
          @TransferNote = params['TransferNote']
        end
      end

      # CreateBPFakeURL请求参数结构体
      class CreateBPFakeURLRequest < TencentCloud::Common::AbstractModel
        # @param ProtectURLId: xxx
        # @type ProtectURLId: Integer
        # @param FakeURL: xxx
        # @type FakeURL: String
        # @param SnapshotNames: xxx
        # @type SnapshotNames: Array
        # @param Note: xxx
        # @type Note: String

        attr_accessor :ProtectURLId, :FakeURL, :SnapshotNames, :Note
        
        def initialize(protecturlid=nil, fakeurl=nil, snapshotnames=nil, note=nil)
          @ProtectURLId = protecturlid
          @FakeURL = fakeurl
          @SnapshotNames = snapshotnames
          @Note = note
        end

        def deserialize(params)
          @ProtectURLId = params['ProtectURLId']
          @FakeURL = params['FakeURL']
          @SnapshotNames = params['SnapshotNames']
          @Note = params['Note']
        end
      end

      # CreateBPFakeURL返回参数结构体
      class CreateBPFakeURLResponse < TencentCloud::Common::AbstractModel
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

      # CreateBPFalseTicket请求参数结构体
      class CreateBPFalseTicketRequest < TencentCloud::Common::AbstractModel
        # @param FakeURL: xxx
        # @type FakeURL: String

        attr_accessor :FakeURL
        
        def initialize(fakeurl=nil)
          @FakeURL = fakeurl
        end

        def deserialize(params)
          @FakeURL = params['FakeURL']
        end
      end

      # CreateBPFalseTicket返回参数结构体
      class CreateBPFalseTicketResponse < TencentCloud::Common::AbstractModel
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

      # CreateBPOfflineAttachment请求参数结构体
      class CreateBPOfflineAttachmentRequest < TencentCloud::Common::AbstractModel
        # @param BrandName: xxx
        # @type BrandName: String
        # @param BrandCertificateName: xx
        # @type BrandCertificateName: String
        # @param TransferName: xx
        # @type TransferName: String
        # @param AuthorizationName: xx
        # @type AuthorizationName: String

        attr_accessor :BrandName, :BrandCertificateName, :TransferName, :AuthorizationName
        
        def initialize(brandname=nil, brandcertificatename=nil, transfername=nil, authorizationname=nil)
          @BrandName = brandname
          @BrandCertificateName = brandcertificatename
          @TransferName = transfername
          @AuthorizationName = authorizationname
        end

        def deserialize(params)
          @BrandName = params['BrandName']
          @BrandCertificateName = params['BrandCertificateName']
          @TransferName = params['TransferName']
          @AuthorizationName = params['AuthorizationName']
        end
      end

      # CreateBPOfflineAttachment返回参数结构体
      class CreateBPOfflineAttachmentResponse < TencentCloud::Common::AbstractModel
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

      # CreateBPOfflineTicket请求参数结构体
      class CreateBPOfflineTicketRequest < TencentCloud::Common::AbstractModel
        # @param FakeURLId: xxx
        # @type FakeURLId: Integer

        attr_accessor :FakeURLId
        
        def initialize(fakeurlid=nil)
          @FakeURLId = fakeurlid
        end

        def deserialize(params)
          @FakeURLId = params['FakeURLId']
        end
      end

      # CreateBPOfflineTicket返回参数结构体
      class CreateBPOfflineTicketResponse < TencentCloud::Common::AbstractModel
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

      # CreateBPProtectURLs请求参数结构体
      class CreateBPProtectURLsRequest < TencentCloud::Common::AbstractModel
        # @param CompanyName: xxx
        # @type CompanyName: String
        # @param Phone: xxx
        # @type Phone: String
        # @param LicenseName: xxx
        # @type LicenseName: String
        # @param ProtectURLs: xxx
        # @type ProtectURLs: Array
        # @param ProtectWebs: xxx
        # @type ProtectWebs: Array

        attr_accessor :CompanyName, :Phone, :LicenseName, :ProtectURLs, :ProtectWebs
        
        def initialize(companyname=nil, phone=nil, licensename=nil, protecturls=nil, protectwebs=nil)
          @CompanyName = companyname
          @Phone = phone
          @LicenseName = licensename
          @ProtectURLs = protecturls
          @ProtectWebs = protectwebs
        end

        def deserialize(params)
          @CompanyName = params['CompanyName']
          @Phone = params['Phone']
          @LicenseName = params['LicenseName']
          @ProtectURLs = params['ProtectURLs']
          @ProtectWebs = params['ProtectWebs']
        end
      end

      # CreateBPProtectURLs返回参数结构体
      class CreateBPProtectURLsResponse < TencentCloud::Common::AbstractModel
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

      # CreateCRBlock请求参数结构体
      class CreateCRBlockRequest < TencentCloud::Common::AbstractModel
        # @param WorkId: 已存证的作品ID
        # @type WorkId: Integer
        # @param TortUrl: 侵权链接
        # @type TortUrl: String
        # @param TortTitle: 侵权标题
        # @type TortTitle: String
        # @param TortPlat: 侵权平台
        # @type TortPlat: String
        # @param BlockUrl: 拦截结果回调地址
        # @type BlockUrl: String
        # @param FileUrl: x
        # @type FileUrl: String
        # @param ValidStartDate: x
        # @type ValidStartDate: String
        # @param ValidEndDate: x
        # @type ValidEndDate: String
        # @param TortPic: xx
        # @type TortPic: String
        # @param CommFileUrl: x
        # @type CommFileUrl: String
        # @param CommValidStartDate: x
        # @type CommValidStartDate: String
        # @param CommValidEndDate: x
        # @type CommValidEndDate: String
        # @param IsProducer: x
        # @type IsProducer: String

        attr_accessor :WorkId, :TortUrl, :TortTitle, :TortPlat, :BlockUrl, :FileUrl, :ValidStartDate, :ValidEndDate, :TortPic, :CommFileUrl, :CommValidStartDate, :CommValidEndDate, :IsProducer
        
        def initialize(workid=nil, torturl=nil, torttitle=nil, tortplat=nil, blockurl=nil, fileurl=nil, validstartdate=nil, validenddate=nil, tortpic=nil, commfileurl=nil, commvalidstartdate=nil, commvalidenddate=nil, isproducer=nil)
          @WorkId = workid
          @TortUrl = torturl
          @TortTitle = torttitle
          @TortPlat = tortplat
          @BlockUrl = blockurl
          @FileUrl = fileurl
          @ValidStartDate = validstartdate
          @ValidEndDate = validenddate
          @TortPic = tortpic
          @CommFileUrl = commfileurl
          @CommValidStartDate = commvalidstartdate
          @CommValidEndDate = commvalidenddate
          @IsProducer = isproducer
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @TortUrl = params['TortUrl']
          @TortTitle = params['TortTitle']
          @TortPlat = params['TortPlat']
          @BlockUrl = params['BlockUrl']
          @FileUrl = params['FileUrl']
          @ValidStartDate = params['ValidStartDate']
          @ValidEndDate = params['ValidEndDate']
          @TortPic = params['TortPic']
          @CommFileUrl = params['CommFileUrl']
          @CommValidStartDate = params['CommValidStartDate']
          @CommValidEndDate = params['CommValidEndDate']
          @IsProducer = params['IsProducer']
        end
      end

      # CreateCRBlock返回参数结构体
      class CreateCRBlockResponse < TencentCloud::Common::AbstractModel
        # @param TortId: 侵权ID
        # @type TortId: Integer
        # @param TortNum: xxx
        # @type TortNum: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TortId, :TortNum, :RequestId
        
        def initialize(tortid=nil, tortnum=nil, requestid=nil)
          @TortId = tortid
          @TortNum = tortnum
          @RequestId = requestid
        end

        def deserialize(params)
          @TortId = params['TortId']
          @TortNum = params['TortNum']
          @RequestId = params['RequestId']
        end
      end

      # CreateCRCompanyVerify请求参数结构体
      class CreateCRCompanyVerifyRequest < TencentCloud::Common::AbstractModel
        # @param CompanyName: 企业名称
        # @type CompanyName: String
        # @param CompanyIDType: 企业认证号码类型 1：社会信用代码 2：组织机构代码 3：企业工商注册码 4：其他 默认为1
        # @type CompanyIDType: String
        # @param CompanyID: 企业证件号码
        # @type CompanyID: String
        # @param CompanyLegalName: 企业法人姓名
        # @type CompanyLegalName: String
        # @param ManagerName: 管理员名称
        # @type ManagerName: String
        # @param ManagerPhone: 管理员手机号
        # @type ManagerPhone: String
        # @param VerificationCode: 手机验证码
        # @type VerificationCode: String
        # @param Type: xxx
        # @type Type: String

        attr_accessor :CompanyName, :CompanyIDType, :CompanyID, :CompanyLegalName, :ManagerName, :ManagerPhone, :VerificationCode, :Type
        
        def initialize(companyname=nil, companyidtype=nil, companyid=nil, companylegalname=nil, managername=nil, managerphone=nil, verificationcode=nil, type=nil)
          @CompanyName = companyname
          @CompanyIDType = companyidtype
          @CompanyID = companyid
          @CompanyLegalName = companylegalname
          @ManagerName = managername
          @ManagerPhone = managerphone
          @VerificationCode = verificationcode
          @Type = type
        end

        def deserialize(params)
          @CompanyName = params['CompanyName']
          @CompanyIDType = params['CompanyIDType']
          @CompanyID = params['CompanyID']
          @CompanyLegalName = params['CompanyLegalName']
          @ManagerName = params['ManagerName']
          @ManagerPhone = params['ManagerPhone']
          @VerificationCode = params['VerificationCode']
          @Type = params['Type']
        end
      end

      # CreateCRCompanyVerify返回参数结构体
      class CreateCRCompanyVerifyResponse < TencentCloud::Common::AbstractModel
        # @param Status: 认证状态 0-认证成功 1-认证失败
        # @type Status: Integer
        # @param Note: 认证结果返回
        # @type Note: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Status, :Note, :RequestId
        
        def initialize(status=nil, note=nil, requestid=nil)
          @Status = status
          @Note = note
          @RequestId = requestid
        end

        def deserialize(params)
          @Status = params['Status']
          @Note = params['Note']
          @RequestId = params['RequestId']
        end
      end

      # CreateCRRight请求参数结构体
      class CreateCRRightRequest < TencentCloud::Common::AbstractModel
        # @param WorkId: 已存证的作品ID
        # @type WorkId: Integer
        # @param TortUrl: 侵权链接
        # @type TortUrl: String
        # @param TortTitle: 侵权标题
        # @type TortTitle: String
        # @param TortPlat: 侵权平台
        # @type TortPlat: String
        # @param RightUrl: 发函结果回调地址
        # @type RightUrl: String
        # @param FileUrl: x
        # @type FileUrl: String
        # @param ValidStartDate: x
        # @type ValidStartDate: String
        # @param ValidEndDate: x
        # @type ValidEndDate: String
        # @param CommFileUrl: x
        # @type CommFileUrl: String
        # @param CommValidStartDate: x
        # @type CommValidStartDate: String
        # @param CommValidEndDate: x
        # @type CommValidEndDate: String
        # @param HomeFileUrl: x
        # @type HomeFileUrl: String
        # @param HomeValidStartDate: x
        # @type HomeValidStartDate: String
        # @param HomeValidEndDate: x
        # @type HomeValidEndDate: String
        # @param IsProducer: x
        # @type IsProducer: String

        attr_accessor :WorkId, :TortUrl, :TortTitle, :TortPlat, :RightUrl, :FileUrl, :ValidStartDate, :ValidEndDate, :CommFileUrl, :CommValidStartDate, :CommValidEndDate, :HomeFileUrl, :HomeValidStartDate, :HomeValidEndDate, :IsProducer
        
        def initialize(workid=nil, torturl=nil, torttitle=nil, tortplat=nil, righturl=nil, fileurl=nil, validstartdate=nil, validenddate=nil, commfileurl=nil, commvalidstartdate=nil, commvalidenddate=nil, homefileurl=nil, homevalidstartdate=nil, homevalidenddate=nil, isproducer=nil)
          @WorkId = workid
          @TortUrl = torturl
          @TortTitle = torttitle
          @TortPlat = tortplat
          @RightUrl = righturl
          @FileUrl = fileurl
          @ValidStartDate = validstartdate
          @ValidEndDate = validenddate
          @CommFileUrl = commfileurl
          @CommValidStartDate = commvalidstartdate
          @CommValidEndDate = commvalidenddate
          @HomeFileUrl = homefileurl
          @HomeValidStartDate = homevalidstartdate
          @HomeValidEndDate = homevalidenddate
          @IsProducer = isproducer
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @TortUrl = params['TortUrl']
          @TortTitle = params['TortTitle']
          @TortPlat = params['TortPlat']
          @RightUrl = params['RightUrl']
          @FileUrl = params['FileUrl']
          @ValidStartDate = params['ValidStartDate']
          @ValidEndDate = params['ValidEndDate']
          @CommFileUrl = params['CommFileUrl']
          @CommValidStartDate = params['CommValidStartDate']
          @CommValidEndDate = params['CommValidEndDate']
          @HomeFileUrl = params['HomeFileUrl']
          @HomeValidStartDate = params['HomeValidStartDate']
          @HomeValidEndDate = params['HomeValidEndDate']
          @IsProducer = params['IsProducer']
        end
      end

      # CreateCRRight返回参数结构体
      class CreateCRRightResponse < TencentCloud::Common::AbstractModel
        # @param TortId: 侵权ID
        # @type TortId: Integer
        # @param TortNum: xxx
        # @type TortNum: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :TortId, :TortNum, :RequestId
        
        def initialize(tortid=nil, tortnum=nil, requestid=nil)
          @TortId = tortid
          @TortNum = tortnum
          @RequestId = requestid
        end

        def deserialize(params)
          @TortId = params['TortId']
          @TortNum = params['TortNum']
          @RequestId = params['RequestId']
        end
      end

      # CreateCRWork请求参数结构体
      class CreateCRWorkRequest < TencentCloud::Common::AbstractModel
        # @param WorkName: 作品名称
        # @type WorkName: String
        # @param WorkCategory: 作品分类
        # @type WorkCategory: String
        # @param WorkType: 作品内容类型
        # @type WorkType: String
        # @param WorkSign: 作品标签
        # @type WorkSign: String
        # @param WorkPic: 作品图片
        # @type WorkPic: String
        # @param WorkDesc: 创作描述
        # @type WorkDesc: String
        # @param IsOriginal: 是否原创 0:否 1:是
        # @type IsOriginal: String
        # @param IsRelease: 是否发布 0：未发布 1：已发布
        # @type IsRelease: String
        # @param ProducerID: 著作权人ID
        # @type ProducerID: Integer
        # @param ProduceTime: 创作时间
        # @type ProduceTime: String
        # @param SampleContentURL: 样品文件路径
        # @type SampleContentURL: String
        # @param SampleDownloadURL: 样本下载Url
        # @type SampleDownloadURL: String
        # @param GrantType: 授予类型
        # @type GrantType: String
        # @param SamplePublicURL: 作品发布Url
        # @type SamplePublicURL: String
        # @param IsMonitor: 是否启用监测 0：不启用 1：启用 默认为0
        # @type IsMonitor: String
        # @param IsCert: 是否启用存证0：不启用 1：启用 默认为1
        # @type IsCert: String
        # @param CertUrl: 存证回调地址
        # @type CertUrl: String
        # @param MonitorUrl: 监测回调地址
        # @type MonitorUrl: String
        # @param ProduceType: 创作性质（原创,改编,翻译,汇编,注释,整理,其他)
        # @type ProduceType: String
        # @param WhiteLists: xxx
        # @type WhiteLists: Array
        # @param WorkId: x
        # @type WorkId: Integer
        # @param ProducerName: xx
        # @type ProducerName: String
        # @param Nickname: xx
        # @type Nickname: String
        # @param Authorization: x
        # @type Authorization: String
        # @param AuthorizationStartTime: x
        # @type AuthorizationStartTime: String
        # @param AuthorizationEndTime: x
        # @type AuthorizationEndTime: String
        # @param ContentType: x
        # @type ContentType: String
        # @param Content: x
        # @type Content: String

        attr_accessor :WorkName, :WorkCategory, :WorkType, :WorkSign, :WorkPic, :WorkDesc, :IsOriginal, :IsRelease, :ProducerID, :ProduceTime, :SampleContentURL, :SampleDownloadURL, :GrantType, :SamplePublicURL, :IsMonitor, :IsCert, :CertUrl, :MonitorUrl, :ProduceType, :WhiteLists, :WorkId, :ProducerName, :Nickname, :Authorization, :AuthorizationStartTime, :AuthorizationEndTime, :ContentType, :Content
        
        def initialize(workname=nil, workcategory=nil, worktype=nil, worksign=nil, workpic=nil, workdesc=nil, isoriginal=nil, isrelease=nil, producerid=nil, producetime=nil, samplecontenturl=nil, sampledownloadurl=nil, granttype=nil, samplepublicurl=nil, ismonitor=nil, iscert=nil, certurl=nil, monitorurl=nil, producetype=nil, whitelists=nil, workid=nil, producername=nil, nickname=nil, authorization=nil, authorizationstarttime=nil, authorizationendtime=nil, contenttype=nil, content=nil)
          @WorkName = workname
          @WorkCategory = workcategory
          @WorkType = worktype
          @WorkSign = worksign
          @WorkPic = workpic
          @WorkDesc = workdesc
          @IsOriginal = isoriginal
          @IsRelease = isrelease
          @ProducerID = producerid
          @ProduceTime = producetime
          @SampleContentURL = samplecontenturl
          @SampleDownloadURL = sampledownloadurl
          @GrantType = granttype
          @SamplePublicURL = samplepublicurl
          @IsMonitor = ismonitor
          @IsCert = iscert
          @CertUrl = certurl
          @MonitorUrl = monitorurl
          @ProduceType = producetype
          @WhiteLists = whitelists
          @WorkId = workid
          @ProducerName = producername
          @Nickname = nickname
          @Authorization = authorization
          @AuthorizationStartTime = authorizationstarttime
          @AuthorizationEndTime = authorizationendtime
          @ContentType = contenttype
          @Content = content
        end

        def deserialize(params)
          @WorkName = params['WorkName']
          @WorkCategory = params['WorkCategory']
          @WorkType = params['WorkType']
          @WorkSign = params['WorkSign']
          @WorkPic = params['WorkPic']
          @WorkDesc = params['WorkDesc']
          @IsOriginal = params['IsOriginal']
          @IsRelease = params['IsRelease']
          @ProducerID = params['ProducerID']
          @ProduceTime = params['ProduceTime']
          @SampleContentURL = params['SampleContentURL']
          @SampleDownloadURL = params['SampleDownloadURL']
          @GrantType = params['GrantType']
          @SamplePublicURL = params['SamplePublicURL']
          @IsMonitor = params['IsMonitor']
          @IsCert = params['IsCert']
          @CertUrl = params['CertUrl']
          @MonitorUrl = params['MonitorUrl']
          @ProduceType = params['ProduceType']
          @WhiteLists = params['WhiteLists']
          @WorkId = params['WorkId']
          @ProducerName = params['ProducerName']
          @Nickname = params['Nickname']
          @Authorization = params['Authorization']
          @AuthorizationStartTime = params['AuthorizationStartTime']
          @AuthorizationEndTime = params['AuthorizationEndTime']
          @ContentType = params['ContentType']
          @Content = params['Content']
        end
      end

      # CreateCRWork返回参数结构体
      class CreateCRWorkResponse < TencentCloud::Common::AbstractModel
        # @param WorkId: 作品ID
        # @type WorkId: Integer
        # @param EvidenceId: x
        # @type EvidenceId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkId, :EvidenceId, :RequestId
        
        def initialize(workid=nil, evidenceid=nil, requestid=nil)
          @WorkId = workid
          @EvidenceId = evidenceid
          @RequestId = requestid
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @EvidenceId = params['EvidenceId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBPCompanyInfo请求参数结构体
      class DescribeBPCompanyInfoRequest < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # DescribeBPCompanyInfo返回参数结构体
      class DescribeBPCompanyInfoResponse < TencentCloud::Common::AbstractModel
        # @param CompanyName: xx
        # @type CompanyName: String
        # @param Phone: xx
        # @type Phone: String
        # @param LicenseName: xx
        # @type LicenseName: String
        # @param LicenseStatus: xx
        # @type LicenseStatus: Integer
        # @param LicenseNote: xx
        # @type LicenseNote: String
        # @param AuthorizationName: xx
        # @type AuthorizationName: String
        # @param AuthorizationStatus: xx
        # @type AuthorizationStatus: Integer
        # @param AuthorizationNote: xx
        # @type AuthorizationNote: String
        # @param BrandDatas: xx
        # @type BrandDatas: Array
        # @param CompanyId: xx
        # @type CompanyId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :CompanyName, :Phone, :LicenseName, :LicenseStatus, :LicenseNote, :AuthorizationName, :AuthorizationStatus, :AuthorizationNote, :BrandDatas, :CompanyId, :RequestId
        
        def initialize(companyname=nil, phone=nil, licensename=nil, licensestatus=nil, licensenote=nil, authorizationname=nil, authorizationstatus=nil, authorizationnote=nil, branddatas=nil, companyid=nil, requestid=nil)
          @CompanyName = companyname
          @Phone = phone
          @LicenseName = licensename
          @LicenseStatus = licensestatus
          @LicenseNote = licensenote
          @AuthorizationName = authorizationname
          @AuthorizationStatus = authorizationstatus
          @AuthorizationNote = authorizationnote
          @BrandDatas = branddatas
          @CompanyId = companyid
          @RequestId = requestid
        end

        def deserialize(params)
          @CompanyName = params['CompanyName']
          @Phone = params['Phone']
          @LicenseName = params['LicenseName']
          @LicenseStatus = params['LicenseStatus']
          @LicenseNote = params['LicenseNote']
          @AuthorizationName = params['AuthorizationName']
          @AuthorizationStatus = params['AuthorizationStatus']
          @AuthorizationNote = params['AuthorizationNote']
          unless params['BrandDatas'].nil?
            @BrandDatas = []
            params['BrandDatas'].each do |i|
              branddata_tmp = BrandData.new
              branddata_tmp.deserialize(i)
              @BrandDatas << branddata_tmp
            end
          end
          @CompanyId = params['CompanyId']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBPFakeURLs请求参数结构体
      class DescribeBPFakeURLsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: xxx
        # @type Filters: Array
        # @param PageSize: xxx
        # @type PageSize: Integer
        # @param PageNumber: xxx
        # @type PageNumber: Integer

        attr_accessor :Filters, :PageSize, :PageNumber
        
        def initialize(filters=nil, pagesize=nil, pagenumber=nil)
          @Filters = filters
          @PageSize = pagesize
          @PageNumber = pagenumber
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
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # DescribeBPFakeURLs返回参数结构体
      class DescribeBPFakeURLsResponse < TencentCloud::Common::AbstractModel
        # @param FakeURLInfos: xxx
        # @type FakeURLInfos: Array
        # @param TotalCount: xxx
        # @type TotalCount: Integer
        # @param ExportURL: xxx
        # @type ExportURL: String
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :FakeURLInfos, :TotalCount, :ExportURL, :RequestId
        
        def initialize(fakeurlinfos=nil, totalcount=nil, exporturl=nil, requestid=nil)
          @FakeURLInfos = fakeurlinfos
          @TotalCount = totalcount
          @ExportURL = exporturl
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['FakeURLInfos'].nil?
            @FakeURLInfos = []
            params['FakeURLInfos'].each do |i|
              fakeurlinfo_tmp = FakeURLInfo.new
              fakeurlinfo_tmp.deserialize(i)
              @FakeURLInfos << fakeurlinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @ExportURL = params['ExportURL']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBPProtectURLs请求参数结构体
      class DescribeBPProtectURLsRequest < TencentCloud::Common::AbstractModel
        # @param PageSize: xxx
        # @type PageSize: Integer
        # @param PageNumber: xxx
        # @type PageNumber: Integer

        attr_accessor :PageSize, :PageNumber
        
        def initialize(pagesize=nil, pagenumber=nil)
          @PageSize = pagesize
          @PageNumber = pagenumber
        end

        def deserialize(params)
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # DescribeBPProtectURLs返回参数结构体
      class DescribeBPProtectURLsResponse < TencentCloud::Common::AbstractModel
        # @param ProtectURLInfos: xxx
        # @type ProtectURLInfos: Array
        # @param TotalCount: xxx
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ProtectURLInfos, :TotalCount, :RequestId
        
        def initialize(protecturlinfos=nil, totalcount=nil, requestid=nil)
          @ProtectURLInfos = protecturlinfos
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ProtectURLInfos'].nil?
            @ProtectURLInfos = []
            params['ProtectURLInfos'].each do |i|
              protecturlinfo_tmp = ProtectURLInfo.new
              protecturlinfo_tmp.deserialize(i)
              @ProtectURLInfos << protecturlinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeBPReportFakeURLs请求参数结构体
      class DescribeBPReportFakeURLsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: xxx
        # @type Filters: Array
        # @param PageSize: xxx
        # @type PageSize: Integer
        # @param PageNumber: xxx
        # @type PageNumber: Integer

        attr_accessor :Filters, :PageSize, :PageNumber
        
        def initialize(filters=nil, pagesize=nil, pagenumber=nil)
          @Filters = filters
          @PageSize = pagesize
          @PageNumber = pagenumber
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
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # DescribeBPReportFakeURLs返回参数结构体
      class DescribeBPReportFakeURLsResponse < TencentCloud::Common::AbstractModel
        # @param ReportFakeURLInfos: xxx
        # @type ReportFakeURLInfos: Array
        # @param TotalCount: xxx
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :ReportFakeURLInfos, :TotalCount, :RequestId
        
        def initialize(reportfakeurlinfos=nil, totalcount=nil, requestid=nil)
          @ReportFakeURLInfos = reportfakeurlinfos
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['ReportFakeURLInfos'].nil?
            @ReportFakeURLInfos = []
            params['ReportFakeURLInfos'].each do |i|
              reportfakeurlinfo_tmp = ReportFakeURLInfo.new
              reportfakeurlinfo_tmp.deserialize(i)
              @ReportFakeURLInfos << reportfakeurlinfo_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCRMonitorDetail请求参数结构体
      class DescribeCRMonitorDetailRequest < TencentCloud::Common::AbstractModel
        # @param WorkId: 作品ID
        # @type WorkId: Integer
        # @param PageSize: 页数
        # @type PageSize: Integer
        # @param PageNumber: 页码
        # @type PageNumber: Integer
        # @param Filters: x
        # @type Filters: Array

        attr_accessor :WorkId, :PageSize, :PageNumber, :Filters
        
        def initialize(workid=nil, pagesize=nil, pagenumber=nil, filters=nil)
          @WorkId = workid
          @PageSize = pagesize
          @PageNumber = pagenumber
          @Filters = filters
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
          unless params['Filters'].nil?
            @Filters = []
            params['Filters'].each do |i|
              filter_tmp = Filter.new
              filter_tmp.deserialize(i)
              @Filters << filter_tmp
            end
          end
        end
      end

      # DescribeCRMonitorDetail返回参数结构体
      class DescribeCRMonitorDetailResponse < TencentCloud::Common::AbstractModel
        # @param Torts: MonitorTort数组
        # @type Torts: Array
        # @param TotalCount: 总记录数
        # @type TotalCount: Integer
        # @param MonitorStatus: x
        # @type MonitorStatus: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Torts, :TotalCount, :MonitorStatus, :RequestId
        
        def initialize(torts=nil, totalcount=nil, monitorstatus=nil, requestid=nil)
          @Torts = torts
          @TotalCount = totalcount
          @MonitorStatus = monitorstatus
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Torts'].nil?
            @Torts = []
            params['Torts'].each do |i|
              monitortort_tmp = MonitorTort.new
              monitortort_tmp.deserialize(i)
              @Torts << monitortort_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @MonitorStatus = params['MonitorStatus']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCRMonitors请求参数结构体
      class DescribeCRMonitorsRequest < TencentCloud::Common::AbstractModel
        # @param Filters: 过滤条件
        # @type Filters: Array
        # @param PageSize: 页数
        # @type PageSize: Integer
        # @param PageNumber: 页码
        # @type PageNumber: Integer

        attr_accessor :Filters, :PageSize, :PageNumber
        
        def initialize(filters=nil, pagesize=nil, pagenumber=nil)
          @Filters = filters
          @PageSize = pagesize
          @PageNumber = pagenumber
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
          @PageSize = params['PageSize']
          @PageNumber = params['PageNumber']
        end
      end

      # DescribeCRMonitors返回参数结构体
      class DescribeCRMonitorsResponse < TencentCloud::Common::AbstractModel
        # @param Monitors: 监测结果
        # @type Monitors: Array
        # @param TotalCount: 记录总条数
        # @type TotalCount: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :Monitors, :TotalCount, :RequestId
        
        def initialize(monitors=nil, totalcount=nil, requestid=nil)
          @Monitors = monitors
          @TotalCount = totalcount
          @RequestId = requestid
        end

        def deserialize(params)
          unless params['Monitors'].nil?
            @Monitors = []
            params['Monitors'].each do |i|
              monitor_tmp = Monitor.new
              monitor_tmp.deserialize(i)
              @Monitors << monitor_tmp
            end
          end
          @TotalCount = params['TotalCount']
          @RequestId = params['RequestId']
        end
      end

      # DescribeCRWorkInfo请求参数结构体
      class DescribeCRWorkInfoRequest < TencentCloud::Common::AbstractModel
        # @param WorkId: xxx
        # @type WorkId: Integer

        attr_accessor :WorkId
        
        def initialize(workid=nil)
          @WorkId = workid
        end

        def deserialize(params)
          @WorkId = params['WorkId']
        end
      end

      # DescribeCRWorkInfo返回参数结构体
      class DescribeCRWorkInfoResponse < TencentCloud::Common::AbstractModel
        # @param WorkName: x
        # @type WorkName: String
        # @param MonitorStatus: x
        # @type MonitorStatus: Integer
        # @param AuthStatus: x
        # @type AuthStatus: Integer
        # @param CommStatus: x
        # @type CommStatus: Integer
        # @param IsProducer: x
        # @type IsProducer: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkName, :MonitorStatus, :AuthStatus, :CommStatus, :IsProducer, :RequestId
        
        def initialize(workname=nil, monitorstatus=nil, authstatus=nil, commstatus=nil, isproducer=nil, requestid=nil)
          @WorkName = workname
          @MonitorStatus = monitorstatus
          @AuthStatus = authstatus
          @CommStatus = commstatus
          @IsProducer = isproducer
          @RequestId = requestid
        end

        def deserialize(params)
          @WorkName = params['WorkName']
          @MonitorStatus = params['MonitorStatus']
          @AuthStatus = params['AuthStatus']
          @CommStatus = params['CommStatus']
          @IsProducer = params['IsProducer']
          @RequestId = params['RequestId']
        end
      end

      # 仿冒网站信息
      class FakeURLInfo < TencentCloud::Common::AbstractModel
        # @param FakeURLId: xxx
        # @type FakeURLId: Integer
        # @param ProtectWeb: xxx
        # @type ProtectWeb: String
        # @param DetectTime: xxx
        # @type DetectTime: String
        # @param FakeURL: xxx
        # @type FakeURL: String
        # @param Snapshot: xxx
        # @type Snapshot: String
        # @param IP: xxx
        # @type IP: String
        # @param IPLoc: xxx
        # @type IPLoc: String
        # @param Heat: xxx
        # @type Heat: Integer
        # @param Status: xxx
        # @type Status: Integer
        # @param Note: xxx
        # @type Note: String
        # @param FakeURLCompany: xxx
        # @type FakeURLCompany: String
        # @param FakeURLAttr: xxx
        # @type FakeURLAttr: String
        # @param FakeURLName: xxx
        # @type FakeURLName: String
        # @param FakeURLICP: xxx
        # @type FakeURLICP: String
        # @param FakeURLCreateTime: xxx
        # @type FakeURLCreateTime: String
        # @param FakeURLExpireTime: xxx
        # @type FakeURLExpireTime: String

        attr_accessor :FakeURLId, :ProtectWeb, :DetectTime, :FakeURL, :Snapshot, :IP, :IPLoc, :Heat, :Status, :Note, :FakeURLCompany, :FakeURLAttr, :FakeURLName, :FakeURLICP, :FakeURLCreateTime, :FakeURLExpireTime
        
        def initialize(fakeurlid=nil, protectweb=nil, detecttime=nil, fakeurl=nil, snapshot=nil, ip=nil, iploc=nil, heat=nil, status=nil, note=nil, fakeurlcompany=nil, fakeurlattr=nil, fakeurlname=nil, fakeurlicp=nil, fakeurlcreatetime=nil, fakeurlexpiretime=nil)
          @FakeURLId = fakeurlid
          @ProtectWeb = protectweb
          @DetectTime = detecttime
          @FakeURL = fakeurl
          @Snapshot = snapshot
          @IP = ip
          @IPLoc = iploc
          @Heat = heat
          @Status = status
          @Note = note
          @FakeURLCompany = fakeurlcompany
          @FakeURLAttr = fakeurlattr
          @FakeURLName = fakeurlname
          @FakeURLICP = fakeurlicp
          @FakeURLCreateTime = fakeurlcreatetime
          @FakeURLExpireTime = fakeurlexpiretime
        end

        def deserialize(params)
          @FakeURLId = params['FakeURLId']
          @ProtectWeb = params['ProtectWeb']
          @DetectTime = params['DetectTime']
          @FakeURL = params['FakeURL']
          @Snapshot = params['Snapshot']
          @IP = params['IP']
          @IPLoc = params['IPLoc']
          @Heat = params['Heat']
          @Status = params['Status']
          @Note = params['Note']
          @FakeURLCompany = params['FakeURLCompany']
          @FakeURLAttr = params['FakeURLAttr']
          @FakeURLName = params['FakeURLName']
          @FakeURLICP = params['FakeURLICP']
          @FakeURLCreateTime = params['FakeURLCreateTime']
          @FakeURLExpireTime = params['FakeURLExpireTime']
        end
      end

      # 过滤参数
      class Filter < TencentCloud::Common::AbstractModel

        
        def initialize()
        end

        def deserialize(params)
        end
      end

      # ModifyBPOfflineAttachment请求参数结构体
      class ModifyBPOfflineAttachmentRequest < TencentCloud::Common::AbstractModel
        # @param LicenseName: xx
        # @type LicenseName: String
        # @param AuthorizationName: xx
        # @type AuthorizationName: String
        # @param BrandName: xx
        # @type BrandName: String
        # @param BrandCertificateName: xx
        # @type BrandCertificateName: String
        # @param TransferName: xx
        # @type TransferName: String

        attr_accessor :LicenseName, :AuthorizationName, :BrandName, :BrandCertificateName, :TransferName
        
        def initialize(licensename=nil, authorizationname=nil, brandname=nil, brandcertificatename=nil, transfername=nil)
          @LicenseName = licensename
          @AuthorizationName = authorizationname
          @BrandName = brandname
          @BrandCertificateName = brandcertificatename
          @TransferName = transfername
        end

        def deserialize(params)
          @LicenseName = params['LicenseName']
          @AuthorizationName = params['AuthorizationName']
          @BrandName = params['BrandName']
          @BrandCertificateName = params['BrandCertificateName']
          @TransferName = params['TransferName']
        end
      end

      # ModifyBPOfflineAttachment返回参数结构体
      class ModifyBPOfflineAttachmentResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCRBlockStatus请求参数结构体
      class ModifyCRBlockStatusRequest < TencentCloud::Common::AbstractModel
        # @param TortId: 侵权ID
        # @type TortId: Integer
        # @param BlockUrl: 拦截结果回调地址
        # @type BlockUrl: String

        attr_accessor :TortId, :BlockUrl
        
        def initialize(tortid=nil, blockurl=nil)
          @TortId = tortid
          @BlockUrl = blockurl
        end

        def deserialize(params)
          @TortId = params['TortId']
          @BlockUrl = params['BlockUrl']
        end
      end

      # ModifyCRBlockStatus返回参数结构体
      class ModifyCRBlockStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCRMonitor请求参数结构体
      class ModifyCRMonitorRequest < TencentCloud::Common::AbstractModel
        # @param WorkId: 作品ID
        # @type WorkId: Integer
        # @param MonitorStatus: 监测状态 1-开启监测 2-关闭监测 默认为1
        # @type MonitorStatus: String

        attr_accessor :WorkId, :MonitorStatus
        
        def initialize(workid=nil, monitorstatus=nil)
          @WorkId = workid
          @MonitorStatus = monitorstatus
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @MonitorStatus = params['MonitorStatus']
        end
      end

      # ModifyCRMonitor返回参数结构体
      class ModifyCRMonitorResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCRObtainStatus请求参数结构体
      class ModifyCRObtainStatusRequest < TencentCloud::Common::AbstractModel
        # @param TortId: xxx
        # @type TortId: Integer
        # @param ObtainType: xxx
        # @type ObtainType: Integer
        # @param ObtainDuration: xxx
        # @type ObtainDuration: Integer
        # @param ObtainUrl: xxx
        # @type ObtainUrl: String

        attr_accessor :TortId, :ObtainType, :ObtainDuration, :ObtainUrl
        
        def initialize(tortid=nil, obtaintype=nil, obtainduration=nil, obtainurl=nil)
          @TortId = tortid
          @ObtainType = obtaintype
          @ObtainDuration = obtainduration
          @ObtainUrl = obtainurl
        end

        def deserialize(params)
          @TortId = params['TortId']
          @ObtainType = params['ObtainType']
          @ObtainDuration = params['ObtainDuration']
          @ObtainUrl = params['ObtainUrl']
        end
      end

      # ModifyCRObtainStatus返回参数结构体
      class ModifyCRObtainStatusResponse < TencentCloud::Common::AbstractModel
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

      # ModifyCRRightStatus请求参数结构体
      class ModifyCRRightStatusRequest < TencentCloud::Common::AbstractModel
        # @param TortId: 侵权ID
        # @type TortId: Integer
        # @param RightUrl: 发函结果回调地址
        # @type RightUrl: String

        attr_accessor :TortId, :RightUrl
        
        def initialize(tortid=nil, righturl=nil)
          @TortId = tortid
          @RightUrl = righturl
        end

        def deserialize(params)
          @TortId = params['TortId']
          @RightUrl = params['RightUrl']
        end
      end

      # ModifyCRRightStatus返回参数结构体
      class ModifyCRRightStatusResponse < TencentCloud::Common::AbstractModel
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

      # 版权保护-监测结果
      class Monitor < TencentCloud::Common::AbstractModel
        # @param WorkId: 作品ID
        # @type WorkId: Integer
        # @param WorkName: 作品名称
        # @type WorkName: String
        # @param WorkType: 作品内容类型 01-视频 02-音频 03-文本 04-图片
        # @type WorkType: String
        # @param TortPlatNum: 侵权平台数量
        # @type TortPlatNum: Integer
        # @param TortURLNum: 侵权链接数量
        # @type TortURLNum: Integer
        # @param MonitorTime: 监测时间
        # @type MonitorTime: String
        # @param MonitorStatus: 0-待监测 1-监测中 2-不监测 3-暂停监测
        # @type MonitorStatus: Integer
        # @param WorkCategory: 作品类型
        # @type WorkCategory: String
        # @param InsertTime: xx
        # @type InsertTime: String
        # @param MonitorNote: xx
        # @type MonitorNote: String

        attr_accessor :WorkId, :WorkName, :WorkType, :TortPlatNum, :TortURLNum, :MonitorTime, :MonitorStatus, :WorkCategory, :InsertTime, :MonitorNote
        
        def initialize(workid=nil, workname=nil, worktype=nil, tortplatnum=nil, torturlnum=nil, monitortime=nil, monitorstatus=nil, workcategory=nil, inserttime=nil, monitornote=nil)
          @WorkId = workid
          @WorkName = workname
          @WorkType = worktype
          @TortPlatNum = tortplatnum
          @TortURLNum = torturlnum
          @MonitorTime = monitortime
          @MonitorStatus = monitorstatus
          @WorkCategory = workcategory
          @InsertTime = inserttime
          @MonitorNote = monitornote
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @WorkName = params['WorkName']
          @WorkType = params['WorkType']
          @TortPlatNum = params['TortPlatNum']
          @TortURLNum = params['TortURLNum']
          @MonitorTime = params['MonitorTime']
          @MonitorStatus = params['MonitorStatus']
          @WorkCategory = params['WorkCategory']
          @InsertTime = params['InsertTime']
          @MonitorNote = params['MonitorNote']
        end
      end

      # 监测侵权信息详情
      class MonitorTort < TencentCloud::Common::AbstractModel
        # @param TortId: 侵权信息ID
        # @type TortId: Integer
        # @param TortTitle: 侵权标题
        # @type TortTitle: String
        # @param TortPlat: 侵权平台
        # @type TortPlat: String
        # @param TortURL: 侵权链接
        # @type TortURL: String
        # @param PubTime: 侵权链接发布时间
        # @type PubTime: String
        # @param Author: 作者
        # @type Author: String
        # @param DetectTime: xxx
        # @type DetectTime: String
        # @param ObtainStatus: 1
        # @type ObtainStatus: Integer
        # @param RightStatus: 1
        # @type RightStatus: Integer
        # @param BlockStatus: 1
        # @type BlockStatus: Integer
        # @param TortNum: 1
        # @type TortNum: String
        # @param ObtainNote: 1
        # @type ObtainNote: String
        # @param WorkTitle: 1
        # @type WorkTitle: String

        attr_accessor :TortId, :TortTitle, :TortPlat, :TortURL, :PubTime, :Author, :DetectTime, :ObtainStatus, :RightStatus, :BlockStatus, :TortNum, :ObtainNote, :WorkTitle
        
        def initialize(tortid=nil, torttitle=nil, tortplat=nil, torturl=nil, pubtime=nil, author=nil, detecttime=nil, obtainstatus=nil, rightstatus=nil, blockstatus=nil, tortnum=nil, obtainnote=nil, worktitle=nil)
          @TortId = tortid
          @TortTitle = torttitle
          @TortPlat = tortplat
          @TortURL = torturl
          @PubTime = pubtime
          @Author = author
          @DetectTime = detecttime
          @ObtainStatus = obtainstatus
          @RightStatus = rightstatus
          @BlockStatus = blockstatus
          @TortNum = tortnum
          @ObtainNote = obtainnote
          @WorkTitle = worktitle
        end

        def deserialize(params)
          @TortId = params['TortId']
          @TortTitle = params['TortTitle']
          @TortPlat = params['TortPlat']
          @TortURL = params['TortURL']
          @PubTime = params['PubTime']
          @Author = params['Author']
          @DetectTime = params['DetectTime']
          @ObtainStatus = params['ObtainStatus']
          @RightStatus = params['RightStatus']
          @BlockStatus = params['BlockStatus']
          @TortNum = params['TortNum']
          @ObtainNote = params['ObtainNote']
          @WorkTitle = params['WorkTitle']
        end
      end

      # 保护网站信息
      class ProtectURLInfo < TencentCloud::Common::AbstractModel
        # @param ProtectURLId: xxx
        # @type ProtectURLId: Integer
        # @param ProtectURL: xxx
        # @type ProtectURL: String
        # @param ProtectWeb: xxx
        # @type ProtectWeb: String
        # @param ProtectURLStatus: xxx
        # @type ProtectURLStatus: Integer
        # @param ProtectURLNote: xxx
        # @type ProtectURLNote: String
        # @param CreateTime: xxx
        # @type CreateTime: String

        attr_accessor :ProtectURLId, :ProtectURL, :ProtectWeb, :ProtectURLStatus, :ProtectURLNote, :CreateTime
        
        def initialize(protecturlid=nil, protecturl=nil, protectweb=nil, protecturlstatus=nil, protecturlnote=nil, createtime=nil)
          @ProtectURLId = protecturlid
          @ProtectURL = protecturl
          @ProtectWeb = protectweb
          @ProtectURLStatus = protecturlstatus
          @ProtectURLNote = protecturlnote
          @CreateTime = createtime
        end

        def deserialize(params)
          @ProtectURLId = params['ProtectURLId']
          @ProtectURL = params['ProtectURL']
          @ProtectWeb = params['ProtectWeb']
          @ProtectURLStatus = params['ProtectURLStatus']
          @ProtectURLNote = params['ProtectURLNote']
          @CreateTime = params['CreateTime']
        end
      end

      # 举报网址信息
      class ReportFakeURLInfo < TencentCloud::Common::AbstractModel
        # @param FakeURLId: xxx
        # @type FakeURLId: Integer
        # @param DetectTime: xxx
        # @type DetectTime: String
        # @param ProtectURL: xxx
        # @type ProtectURL: String
        # @param ProtectWeb: xxx
        # @type ProtectWeb: String
        # @param FakeURL: xxx
        # @type FakeURL: String
        # @param Snapshot: xxx
        # @type Snapshot: String
        # @param IP: xxx
        # @type IP: String
        # @param IPLoc: xxx
        # @type IPLoc: String
        # @param Heat: xxx
        # @type Heat: Integer
        # @param Status: xxx
        # @type Status: Integer
        # @param Note: xxx
        # @type Note: String
        # @param FakeURLCompany: xxx
        # @type FakeURLCompany: String
        # @param FakeURLAttr: xxx
        # @type FakeURLAttr: String
        # @param FakeURLName: xxx
        # @type FakeURLName: String
        # @param FakeURLICP: xxx
        # @type FakeURLICP: String
        # @param FakeURLCreateTime: xxx
        # @type FakeURLCreateTime: String
        # @param FakeURLExpireTime: xxx
        # @type FakeURLExpireTime: String
        # @param BlockTime: xxx
        # @type BlockTime: String

        attr_accessor :FakeURLId, :DetectTime, :ProtectURL, :ProtectWeb, :FakeURL, :Snapshot, :IP, :IPLoc, :Heat, :Status, :Note, :FakeURLCompany, :FakeURLAttr, :FakeURLName, :FakeURLICP, :FakeURLCreateTime, :FakeURLExpireTime, :BlockTime
        
        def initialize(fakeurlid=nil, detecttime=nil, protecturl=nil, protectweb=nil, fakeurl=nil, snapshot=nil, ip=nil, iploc=nil, heat=nil, status=nil, note=nil, fakeurlcompany=nil, fakeurlattr=nil, fakeurlname=nil, fakeurlicp=nil, fakeurlcreatetime=nil, fakeurlexpiretime=nil, blocktime=nil)
          @FakeURLId = fakeurlid
          @DetectTime = detecttime
          @ProtectURL = protecturl
          @ProtectWeb = protectweb
          @FakeURL = fakeurl
          @Snapshot = snapshot
          @IP = ip
          @IPLoc = iploc
          @Heat = heat
          @Status = status
          @Note = note
          @FakeURLCompany = fakeurlcompany
          @FakeURLAttr = fakeurlattr
          @FakeURLName = fakeurlname
          @FakeURLICP = fakeurlicp
          @FakeURLCreateTime = fakeurlcreatetime
          @FakeURLExpireTime = fakeurlexpiretime
          @BlockTime = blocktime
        end

        def deserialize(params)
          @FakeURLId = params['FakeURLId']
          @DetectTime = params['DetectTime']
          @ProtectURL = params['ProtectURL']
          @ProtectWeb = params['ProtectWeb']
          @FakeURL = params['FakeURL']
          @Snapshot = params['Snapshot']
          @IP = params['IP']
          @IPLoc = params['IPLoc']
          @Heat = params['Heat']
          @Status = params['Status']
          @Note = params['Note']
          @FakeURLCompany = params['FakeURLCompany']
          @FakeURLAttr = params['FakeURLAttr']
          @FakeURLName = params['FakeURLName']
          @FakeURLICP = params['FakeURLICP']
          @FakeURLCreateTime = params['FakeURLCreateTime']
          @FakeURLExpireTime = params['FakeURLExpireTime']
          @BlockTime = params['BlockTime']
        end
      end

      # UpdateCRWork请求参数结构体
      class UpdateCRWorkRequest < TencentCloud::Common::AbstractModel
        # @param WorkId: xx
        # @type WorkId: Integer
        # @param ContentType: xx
        # @type ContentType: String
        # @param Content: xx
        # @type Content: String
        # @param CertType: xx
        # @type CertType: String

        attr_accessor :WorkId, :ContentType, :Content, :CertType
        
        def initialize(workid=nil, contenttype=nil, content=nil, certtype=nil)
          @WorkId = workid
          @ContentType = contenttype
          @Content = content
          @CertType = certtype
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @ContentType = params['ContentType']
          @Content = params['Content']
          @CertType = params['CertType']
        end
      end

      # UpdateCRWork返回参数结构体
      class UpdateCRWorkResponse < TencentCloud::Common::AbstractModel
        # @param WorkId: xx
        # @type WorkId: Integer
        # @param EvidenceId: xx
        # @type EvidenceId: Integer
        # @param RequestId: 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        # @type RequestId: String

        attr_accessor :WorkId, :EvidenceId, :RequestId
        
        def initialize(workid=nil, evidenceid=nil, requestid=nil)
          @WorkId = workid
          @EvidenceId = evidenceid
          @RequestId = requestid
        end

        def deserialize(params)
          @WorkId = params['WorkId']
          @EvidenceId = params['EvidenceId']
          @RequestId = params['RequestId']
        end
      end

    end
  end
end
