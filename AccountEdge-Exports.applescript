(*  Exports all Accounts, Activities, Items, Jobs, Purchases, Sales, and Journal
    entries.

	Written against AccountEdge Pro 2012 Build 16.1
 *)

set export_location to POSIX file "/Users/matt/Desktop/AE/Exports/"
set datafilename to choose file with prompt "Select your datafile"

set app_fullpath to POSIX file "/Applications/AccountEdge Pro 2012/AccountEdge Pro.app" as string
set app_name to application app_fullpath

set date_set_from to "1/1/1985"
set date_set_to to "12/31/2050"

set user_name to "Administrator"
set password_master to ""

activate app_name

tell application "AccountEdge Pro"
	
	open datafilename as alias username user_name password password_master
	delay 3
	
	�
		export accounts to export_location & "Accounts" as string �
			username user_name �
			password password_master �
			separated by tabs �
			first record is header �
			balances from month of december �
			in this year
	
	�
		export activities to export_location & "Activities" as string �
			username user_name �
			password password_master �
			separated by tabs �
			first record is header
	
	�
		export items to export_location & "Items" as string �
			username user_name �
			password password_master �
			separated by tabs �
			first record is header
	
	�
		export jobs to export_location & "Jobs" as string �
			username user_name �
			password password_master �
			separated by tabs �
			first record is header
	
	�
		export purchases of type service �
			to export_location & "Purchases-Service" as string �
			username user_name �
			password password_master �
			separated by tabs �
			first record is header
	
	�
		export purchases of type item �
			to export_location & "Purchases-Item" as string �
			username user_name �
			password password_master �
			separated by tabs �
			first record is header
	
	�
		export purchases of type professional �
			to export_location & "Purchases-Professional" as string �
			username user_name �
			password password_master �
			separated by tabs �
			first record is header
	
	�
		export purchases of type miscellaneous �
			to export_location & "Purchases-Misc" as string �
			username user_name �
			password password_master �
			separated by tabs �
			first record is header
	�
		export sales of type service �
			to export_location & "Sales-Service" as string �
			username user_name �
			password password_master �
			separated by tabs �
			first record is header
	
	�
		export sales of type item �
			to export_location & "Sales-Item" as string �
			username user_name �
			password password_master �
			separated by tabs �
			first record is header
	
	�
		export sales of type professional �
			to export_location & "Sales-Professional" as string �
			username user_name �
			password password_master �
			separated by tabs �
			first record is header
	
	�
		export sales of type miscellaneous �
			to export_location & "Sales-Misc" as string �
			username user_name �
			password password_master �
			separated by tabs �
			first record is header
	�
		export receive money to export_location & "Receive Money" as string �
			username user_name �
			password password_master �
			separated by tabs �
			first record is header
	�
		export spend money to export_location & "Spend Money" as string �
			username user_name �
			password password_master �
			separated by tabs �
			first record is header
	
	�
		export journal entries to export_location & "Journals" as string �
			username user_name �
			password password_master �
			separated by tabs �
			first record is header �
			source journal all �
			type disbursements all �
			type receipts all
end tell
