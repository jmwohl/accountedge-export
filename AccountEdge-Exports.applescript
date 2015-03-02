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
	
	Â
		export accounts to export_location & "Accounts" as string Â
			username user_name Â
			password password_master Â
			separated by tabs Â
			first record is header Â
			balances from month of december Â
			in this year
	
	Â
		export activities to export_location & "Activities" as string Â
			username user_name Â
			password password_master Â
			separated by tabs Â
			first record is header
	
	Â
		export items to export_location & "Items" as string Â
			username user_name Â
			password password_master Â
			separated by tabs Â
			first record is header
	
	Â
		export jobs to export_location & "Jobs" as string Â
			username user_name Â
			password password_master Â
			separated by tabs Â
			first record is header
	
	Â
		export purchases of type service Â
			to export_location & "Purchases-Service" as string Â
			username user_name Â
			password password_master Â
			separated by tabs Â
			first record is header
	
	Â
		export purchases of type item Â
			to export_location & "Purchases-Item" as string Â
			username user_name Â
			password password_master Â
			separated by tabs Â
			first record is header
	
	Â
		export purchases of type professional Â
			to export_location & "Purchases-Professional" as string Â
			username user_name Â
			password password_master Â
			separated by tabs Â
			first record is header
	
	Â
		export purchases of type miscellaneous Â
			to export_location & "Purchases-Misc" as string Â
			username user_name Â
			password password_master Â
			separated by tabs Â
			first record is header
	Â
		export sales of type service Â
			to export_location & "Sales-Service" as string Â
			username user_name Â
			password password_master Â
			separated by tabs Â
			first record is header
	
	Â
		export sales of type item Â
			to export_location & "Sales-Item" as string Â
			username user_name Â
			password password_master Â
			separated by tabs Â
			first record is header
	
	Â
		export sales of type professional Â
			to export_location & "Sales-Professional" as string Â
			username user_name Â
			password password_master Â
			separated by tabs Â
			first record is header
	
	Â
		export sales of type miscellaneous Â
			to export_location & "Sales-Misc" as string Â
			username user_name Â
			password password_master Â
			separated by tabs Â
			first record is header
	Â
		export receive money to export_location & "Receive Money" as string Â
			username user_name Â
			password password_master Â
			separated by tabs Â
			first record is header
	Â
		export spend money to export_location & "Spend Money" as string Â
			username user_name Â
			password password_master Â
			separated by tabs Â
			first record is header
	
	Â
		export journal entries to export_location & "Journals" as string Â
			username user_name Â
			password password_master Â
			separated by tabs Â
			first record is header Â
			source journal all Â
			type disbursements all Â
			type receipts all
end tell
