%YDBUTILS77 ; YodaDB Utilities Entry Point; 09-06-2024
	;#################################################################
	;#                                                               #
	;# Copyright (c) 2024 YodaDB LLC and/or its subsidiaries.       #
	;# All rights reserved.                                          #
	;#                                                               #
	;#   This source code contains the intellectual property         #
	;#   of its copyright holder(s), and is made available           #
	;#   under a license.  If you do not know the terms of           #
	;#   the license, please stop and do not read further.           #
	;#                                                               #
	;#################################################################		
	Q
	;
	; example: 
	;   s result=0
	;   d dmkdir("/folder-a/folder-b",.result)
	;   i result d celebrate i 1
	;	e  d quitlife
	;
	;
mkdir(path,return)
		; // do mkdir.;
		; // if you provide return (which is optional)
		; // return will be 1 if success
		; // return will be 0 if fail
		; // return is optional 
		n tmp,command s return=$g(return)
		s tmp="",command="mkdir -p "_path
		i $g(return)]"",'($zsearch(path)]"") d rshell(command,.return) q	
		i $g(return)="",'($zsearch(path)]"") d rshell(command,.tmp)  q
		i $g(return)]"" s return=$zsearch(path)]"" q
		i $g(return)="" s tmp=$zsearch(path)]"" q		
		q
	;
rshell(command,return)
	new device,counter,string,currentdevice set counter=0
	set currentdevice=$io
	set device="runshellcommmandpipe"_$job
	open device:(shell="/bin/sh":command=command:readonly)::"pipe"
	use device for  quit:$zeof=1  read string:2 set return($increment(counter))=string quit:'$test
	close device if $get(return(counter))="" kill return(counter)
	use currentdevice
	quit
	;	