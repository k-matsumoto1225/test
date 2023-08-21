select
	cd_sku
	, CD_MAKER_GROUP
	, NM_MAKER_GROUP
	, CD_CIGAR_TYPE
	, NM_CIGAR_TYPE
	, case
		when CD_MAKER_GROUP = '0001' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0106' 										             then '1'
		when CD_MAKER_GROUP = '0001' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0114' and CD_SUB_FAMILY_NAME_ALL = '0111'  	             then '2'
        when CD_MAKER_GROUP = '0001' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0114'                                                      then '3'
        when CD_MAKER_GROUP = '0001' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0117' and CD_SUB_FAMILY_NAME_ALL = '0218'                  then '4'
		when CD_MAKER_GROUP = '0001' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0126' and CD_SUB_FAMILY_NAME_ALL = '1702'                  then '5'
        when CD_MAKER_GROUP = '0001' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0126' and CD_SUB_FAMILY_NAME_ALL = '1703'                  then '6'
        when CD_MAKER_GROUP = '0001' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0126'                                                      then '7'
        when CD_MAKER_GROUP = '0001' and CD_CIGAR_TYPE = '0002' and CD_FAMILY_NAME = '0114' and CD_SUB_FAMILY_NAME_ALL = '0118'                  then '1'
		when CD_MAKER_GROUP = '0001' and CD_CIGAR_TYPE = '0002' and CD_FAMILY_NAME = '0320' and CD_SUB_FAMILY_NAME_ALL = '1103'                  then '2'
        when CD_MAKER_GROUP = '0001' and CD_CIGAR_TYPE = '0002' and CD_FAMILY_NAME = '0126' and CD_SUB_FAMILY_NAME_ALL = '1720'                  then '3'
		when CD_MAKER_GROUP = '0001' and CD_CIGAR_TYPE = '0002' and CD_FAMILY_NAME = '0114' and CD_SUB_FAMILY_NAME_ALL = '0117'                  then '4'
        when CD_MAKER_GROUP = '0002' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0120' and CD_SUB_FAMILY_NAME_ALL in ('0301','0306','0316') then '1'
        when CD_MAKER_GROUP = '0002' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0120'                                                      then '2'
		when CD_MAKER_GROUP = '0002' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0130'                                                      then '3'
        when CD_MAKER_GROUP = '0002' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0166'                                                      then '4'
		when CD_MAKER_GROUP = '0002' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0170' and CD_SUB_FAMILY_NAME_ALL = '1903'                  then '5'
        when CD_MAKER_GROUP = '0002' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0170' and CD_SUB_FAMILY_NAME_ALL = '1902'                  then '6'
        when CD_MAKER_GROUP = '0002' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0242'                                                      then '7'
        when CD_MAKER_GROUP = '0002' and CD_CIGAR_TYPE = '0002' and CD_FAMILY_NAME = '0323'                                                      then '1'
		when CD_MAKER_GROUP = '0002' and CD_CIGAR_TYPE = '0002' and CD_FAMILY_NAME = '0130'                                                      then '2'
        when CD_MAKER_GROUP = '0002' and CD_CIGAR_TYPE = '0002' and CD_FAMILY_NAME = '0341'                                                      then '3'
		when CD_MAKER_GROUP = '0002' and CD_CIGAR_TYPE = '0002' and CD_FAMILY_NAME = '0342'                                                      then '4'
        when CD_MAKER_GROUP = '0003' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0031' and CD_SUB_FAMILY_NAME_ALL = '1805'                  then '1'
		when CD_MAKER_GROUP = '0003' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0031'                                                      then '2'
        when CD_MAKER_GROUP = '0003' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0138' and CD_SUB_FAMILY_NAME_ALL = '0611'                  then '3'
		when CD_MAKER_GROUP = '0003' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0138'                                                      then '4'
        when CD_MAKER_GROUP = '0003' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0207'                                                      then '5'
        when CD_MAKER_GROUP = '0003' and CD_CIGAR_TYPE = '0001' and CD_FAMILY_NAME = '0281'                                                      then '6'
        when CD_MAKER_GROUP = '0003' and CD_CIGAR_TYPE = '0001'                                                                                  then '7'
		when CD_MAKER_GROUP = '0003' and CD_CIGAR_TYPE = '0002' and CD_FAMILY_NAME = '0031' and CD_SUB_FAMILY_NAME_ALL = '1804'                  then '1'
        when CD_MAKER_GROUP = '0003' and CD_CIGAR_TYPE = '0002' and CD_FAMILY_NAME = '0138' and CD_SUB_FAMILY_NAME_ALL = '0621'                  then '2'
		when CD_MAKER_GROUP = '0003' and CD_CIGAR_TYPE = '0002' and CD_FAMILY_NAME = '0138' and CD_SUB_FAMILY_NAME_ALL = '0620'                  then '3'
        else 'N/A'
      end
from
	c_brand_latest_all
union all
select
	cd_sku
	, CD_MAKER_GROUP
	, NM_MAKER_GROUP
	, CD_CIGAR_TYPE
	, NM_CIGAR_TYPE
	, case
		when CD_MAKER_GROUP = '0001' and CD_FAMILY_NAME = '0106' 										              then '1'
		when CD_MAKER_GROUP = '0001' and CD_FAMILY_NAME = '0114' and CD_SUB_FAMILY_NAME_ALL = '0111'  	              then '2'
        when CD_MAKER_GROUP = '0001' and CD_FAMILY_NAME = '0114'                                                      then '3'
        when CD_MAKER_GROUP = '0001' and CD_FAMILY_NAME = '0117' and CD_SUB_FAMILY_NAME_ALL = '0218'                  then '4'
		when CD_MAKER_GROUP = '0001' and CD_FAMILY_NAME = '0126' and CD_SUB_FAMILY_NAME_ALL = '1702'                  then '5'
        when CD_MAKER_GROUP = '0001' and CD_FAMILY_NAME = '0126' and CD_SUB_FAMILY_NAME_ALL = '1703'                  then '6'
        when CD_MAKER_GROUP = '0001' and CD_FAMILY_NAME = '0126'                                                      then '7'
        when CD_MAKER_GROUP = '0001' and CD_FAMILY_NAME = '0114' and CD_SUB_FAMILY_NAME_ALL = '0118'                  then '1'
		when CD_MAKER_GROUP = '0001' and CD_FAMILY_NAME = '0320' and CD_SUB_FAMILY_NAME_ALL = '1103'                  then '2'
        when CD_MAKER_GROUP = '0001' and CD_FAMILY_NAME = '0126' and CD_SUB_FAMILY_NAME_ALL = '1720'                  then '3'
		when CD_MAKER_GROUP = '0001' and CD_FAMILY_NAME = '0114' and CD_SUB_FAMILY_NAME_ALL = '0117'                  then '4'
        when CD_MAKER_GROUP = '0002' and CD_FAMILY_NAME = '0120' and CD_SUB_FAMILY_NAME_ALL in ('0301','0306','0316') then '1'
        when CD_MAKER_GROUP = '0002' and CD_FAMILY_NAME = '0120'                                                      then '2'
		when CD_MAKER_GROUP = '0002' and CD_FAMILY_NAME = '0130'                                                      then '3'
        when CD_MAKER_GROUP = '0002' and CD_FAMILY_NAME = '0166'                                                      then '4'
		when CD_MAKER_GROUP = '0002' and CD_FAMILY_NAME = '0170' and CD_SUB_FAMILY_NAME_ALL = '1903'                  then '5'
        when CD_MAKER_GROUP = '0002' and CD_FAMILY_NAME = '0170' and CD_SUB_FAMILY_NAME_ALL = '1902'                  then '6'
        when CD_MAKER_GROUP = '0002' and CD_FAMILY_NAME = '0242'                                                      then '7'
        when CD_MAKER_GROUP = '0002' and CD_FAMILY_NAME = '0323'                                                      then '1'
		when CD_MAKER_GROUP = '0002' and CD_FAMILY_NAME = '0130'                                                      then '2'
        when CD_MAKER_GROUP = '0002' and CD_FAMILY_NAME = '0341'                                                      then '3'
		when CD_MAKER_GROUP = '0002' and CD_FAMILY_NAME = '0342'                                                      then '4'
        when CD_MAKER_GROUP = '0003' and CD_FAMILY_NAME = '0031' and CD_SUB_FAMILY_NAME_ALL = '1805'                  then '1'
		when CD_MAKER_GROUP = '0003' and CD_FAMILY_NAME = '0031'                                                      then '2'
        when CD_MAKER_GROUP = '0003' and CD_FAMILY_NAME = '0138' and CD_SUB_FAMILY_NAME_ALL = '0611'                  then '3'
		when CD_MAKER_GROUP = '0003' and CD_FAMILY_NAME = '0138'                                                      then '4'
        when CD_MAKER_GROUP = '0003' and CD_FAMILY_NAME = '0207'                                                      then '5'
        when CD_MAKER_GROUP = '0003' and CD_FAMILY_NAME = '0281'                                                      then '6'
		when CD_MAKER_GROUP = '0003' and CD_FAMILY_NAME = '0031' and CD_SUB_FAMILY_NAME_ALL = '1804'                  then '1'
        when CD_MAKER_GROUP = '0003' and CD_FAMILY_NAME = '0138' and CD_SUB_FAMILY_NAME_ALL = '0621'                  then '2'
		when CD_MAKER_GROUP = '0003' and CD_FAMILY_NAME = '0138' and CD_SUB_FAMILY_NAME_ALL = '0620'                  then '3'
        when CD_MAKER_GROUP = '0003'                                                                                  then '7'
        else 'N/A'
     end
from
	c_brand_latest_all