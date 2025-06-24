USE [ANPR]
GO
/****** Object:  StoredProcedure [dbo].[sp_getBlackList]    Script Date: 6/24/2025 1:57:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_getBlackList] (@p_license_number varchar(10), @p_location_id int) as 

	set nocount on

	drop table if exists #tempdata


	if (select count(1) from TransBlackList as a
			where REPLACE(a.tbl_license_number,' ','') like CONCAT('%', @p_license_number, '%')) > 0
	begin
		update a
		set tbl_detection_datetime = GETDATE(),
			tbl_mld_location_id = @p_location_id
		from TransBlackList as a
		where REPLACE(a.tbl_license_number,' ','') like CONCAT('%', @p_license_number, '%')

		select 
			a.tbl_license_number as PlatNumber,
			a.tbl_payment_date as PaymentDate,
			a.tbl_lastpayment_date as LastInstallmentDate,
			a.tbl_tenur as Tenur,
			b.mv_brand as Brand,
			b.mv_model as Model,
			b.mv_color as Color,
			case 
				when ISNULL(c.mo_middle_name, '') = ''
					then CONCAT(c.mo_first_name, ' ', c.mo_last_name) 
					else CONCAT(c.mo_first_name, ' ', c.mo_middle_name, ' ', c.mo_last_name) 
			end as FullName,
			case c.mo_gender 
				when 'M'
					then 'Laki-laki'
					else 'Perempuan'
			end as Gender,
			c.mo_address as FullAddress,
			c.mo_phone_number as PhoneNumber,
			a.tbl_detection_datetime as DetectionDT,
			a.tbl_mld_location_id as LocationID,
			d.mld_location_name as LocationName,
			d.mld_location_latitude as Latitude,
			d.mld_location_longitude Longitude,
			d.mld_maps as Maps,
			d.mld_location_address as LocationAddress,
			e.mar_full_name as Collector,
			e.mar_phone_number as CollectorPhone,
			e.mar_telegram_id as CollectorTelegram
			--c.*
			--select REPLACE(tbl_license_number,' ',''),*
		--into #tempdata
		from TransBlackList as a
		inner join MasterVehicles as b
			on b.mv_license_plate = a.tbl_license_number
		inner join MasterOwners as c
			on c.mo_owner_id = b.mv_mo_owner_id
		left join MasterLocationDevice as d
			on d.mld_location_id = a.tbl_mld_location_id
		left join MasterAssetRecoveryTeams as e
			on e.mar_mld_location_id = a.tbl_mld_location_id
		where 
			REPLACE(a.tbl_license_number,' ','') like CONCAT('%', @p_license_number, '%')


	end


	



GO
/****** Object:  StoredProcedure [dbo].[sp_getCollectorTeam]    Script Date: 6/24/2025 1:57:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sp_getCollectorTeam] (@p_location_id int)
as

	set nocount on

	select 
		a.mar_full_name as PIC,
		a.mar_telegram_id as ChatID,
		b.mld_location_name as LocationName,
		b.mld_location_address as LocationAddress,
		b.mld_maps as LocationMaps
		--,*
	from MasterAssetRecoveryTeams as a
	inner join MasterLocationDevice as b
		on b.mld_location_id = a.mar_mld_location_id
	where b.mld_location_id = @p_location_id
GO
/****** Object:  StoredProcedure [dbo].[sp_TransBlackListIdentification]    Script Date: 6/24/2025 1:57:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_TransBlackListIdentification] (@p_license_number varchar(15), @p_location_id int) as

	set nocount on
	--declare @p_license_number varchar(15) = 'B2676BIB'
	--declare @p_location_id int
	--declare @NewID INT

	declare @o_license_number varchar(15) = ''
	declare @returnid int

	select @o_license_number = a.tbl_license_number from TransBlackList as a
	where REPLACE(a.tbl_license_number,' ','') like CONCAT('%', @p_license_number, '%')

	IF ISNULL(@o_license_number, '') <> ''
	begin
		begin try
			insert into TransBlackListIdentification (tbli_license_number, tbli_mld_location_id) values
			(@o_license_number, @p_location_id)

			SELECT @returnid = SCOPE_IDENTITY()
		end try
		begin catch
			SELECT @returnid = -1
		end catch
	end

	select @returnid as id
GO
