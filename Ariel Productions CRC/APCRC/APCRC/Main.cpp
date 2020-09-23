//::|сссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссс|::
//::|сс ---------------------------------------------------------------------------------- сс|::
//::|сс|						~ A R I E L   P R O D U C T I O N S ~                     |сс|::
//::|сс|                               ~ ALL RIGHTS RESERVED ~                            |сс|::
//::|сс ---------------------------------------------------------------------------------- сс|::
//::|сс| ~ PROGRAM DATA ~													      /-----/ |сс|::
//::|сс|							            								/-----/ | |сс|::
//::|сс| PROGRAMMER:: James Dougherty											| |   | | |сс|::
//::|сс| COPYRIGHT :: ©2005 Ariel Productions									| |   | | |сс|::
//::|сс| TYPE      :: Checksum Library											| /---|-/ |сс|::
//::|сс|																		/-----/   |сс|::
//::|сс ---------------------------------------------------------------------------------- сс|::
//::|сс| ~ SOURCE DATA ~																  |сс|::
//::|сс|																				  |сс|::
//::|сс| FILENAME :: Main.cpp															  |сс|::
//::|сс| VERSION  :: 1.0																  |сс|::
//::|сс|																				  |сс|::
//::|сс| HISTORY DATA																	  |сс|::
//::|сс| | 																				  |сс|::
//::|сс| |-N/A																			  |сс|::
//::|сс| |																				  |сс|::
//::|сс|																				  |сс|::
//::|сс| BUGS																			  |сс|::
//::|сс| |																				  |сс|::
//::|сс| |-N/A																			  |сс|::
//::|сс| |																				  |сс|::
//::|сс|																				  |сс|::
//::|сс ---------------------------------------------------------------------------------- сс|::
//::|сссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссс|::
//::|сс ---------------------------------------------------------------------------------- сс|::
//::|сс| This program is Copyright ©2005 Ariel Productions (James Dougherty). This		  |сс|::
//::|сс| program is not in the public domain, therefore, it is not open source and all	  |сс|::
//::|сс| copyrights remain intact. This program constitutes proprietary information and   |сс|::
//::|сс| trade secrets of Ariel Productions, Ashland, Ohio. This program or any part of   |сс|::
//::|сс| this program may not be copied, sold, rented, leased, given, assigned, or		  |сс|::
//::|сс| otherwise made available to any other individual or organization without the     |сс|::
//::|сс| written consent of Ariel Productions. Also, no part of this unpublished work may |сс|::
//::|сс| be reproduced, transmitted, or stored in a retrieval system. Nor can this		  |сс|::
//::|сс| program be translated into any human or computer language in any form or by any  |сс|::
//::|сс| means electronically, mechanically, magnetically, optically, chemically, manual  |сс|::
//::|сс| or otherwise without the written permission of the copyright owner				  |сс|::
//::|сс| (Ariel Productions). Contact information is listed below for more information.   |сс|::
//::|сс|																				  |сс|::
//::|сс| Ariel Productions																  |сс|::
//::|сс| James Dougherty																  |сс|::
//::|сс| arielproductions@zoominternet.net												  |сс|::
//::|сс|																				  |сс|::
//::|сс ---------------------------------------------------------------------------------- сс|::
//::|сссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссс|::

#include "Main.h"

//------------------------------------------------------------------------------------------------
//--
//--DllMain(*)
//--Version: 1.0
//--
//------------------------------------------------------------------------------------------------
BOOL APIENTRY DllMain(HINSTANCE ModuleHandle, DWORD ReasonForCall, PVOID Reserved)
{
	switch(ReasonForCall)
	{
		case DLL_PROCESS_ATTACH:
		{
			DisableThreadLibraryCalls(ModuleHandle);
			break;
		}

		case DLL_THREAD_ATTACH:
		{
			break;
		}

		case DLL_THREAD_DETACH:
		{
			break;
		} 

		case DLL_PROCESS_DETACH:
		{
			break;
		}
    }
    return TRUE;
}

//------------------------------------------------------------------------------------------------
//--
//--AP_ComputeCRC16_String(*)
//--Version: 1.0
//--
//------------------------------------------------------------------------------------------------
APAPI APulong APSTDCALL AP_ComputeCRC16_String(LPCTSTR Buffer, APushort& CRC16, CRC16METHOD Method)
{
	//--Initialize the CRC class, compute the CRC checksum, and then cleanup the CRC class
	g_APCRC16.InitializeCRC16System(Method);
	APulong Result = g_APCRC16.ComputeCRC16_String(Buffer, CRC16);
	g_APCRC16.CleanupCRC16System();
	return Result;
}

//------------------------------------------------------------------------------------------------
//--
//--AP_ComputeCRC16_File(*)
//--Version: 1.0
//--
//------------------------------------------------------------------------------------------------
APAPI APulong APSTDCALL AP_ComputeCRC16_File(LPCTSTR Filename, APushort& CRC16, CRC16METHOD Method)
{
	//--Initialize the CRC class, compute the CRC checksum, and then cleanup the CRC class
	g_APCRC16.InitializeCRC16System(Method);
	APulong Result = g_APCRC16.ComputeCRC16_File(Filename, CRC16);
	g_APCRC16.CleanupCRC16System();
	return Result;
}

//------------------------------------------------------------------------------------------------
//--
//--AP_ComputeCRC16_ByteArray(*)
//--Version: 1.0
//--
//------------------------------------------------------------------------------------------------
APAPI APulong APSTDCALL AP_ComputeCRC16_ByteArray(const APuchar* Bytes, APlong Length, APushort& CRC16, CRC16METHOD Method)
{
	//--Initialize the CRC class, compute the CRC checksum, and then cleanup the CRC class
	g_APCRC16.InitializeCRC16System(Method);
	APulong Result = g_APCRC16.ComputeCRC16_ByteArray(Bytes, Length, CRC16);
	g_APCRC16.CleanupCRC16System();
	return Result;
}

//------------------------------------------------------------------------------------------------
//--
//--ComputeCRC32_String(*)
//--Version: 1.0
//--
//------------------------------------------------------------------------------------------------
APAPI APulong APSTDCALL AP_ComputeCRC32_String(LPCTSTR Buffer, APulong& CRC32, CRC32METHOD Method)
{
	//--Initialize the CRC class, compute the CRC checksum, and then cleanup the CRC class
	g_APCRC32.InitializeCRC32System(Method);
	APulong Result = g_APCRC32.ComputeCRC32_String(Buffer, CRC32);
	g_APCRC32.CleanupCRC32System();
	return Result;
}

//------------------------------------------------------------------------------------------------
//--
//--ComputeCRC32_File(*)
//--Version: 1.0
//--
//------------------------------------------------------------------------------------------------
APAPI APulong APSTDCALL AP_ComputeCRC32_File(LPCTSTR Filename, APulong& CRC32, CRC32METHOD Method)
{
	//--Initialize the CRC class, compute the CRC checksum, and then cleanup the CRC class
	g_APCRC32.InitializeCRC32System(Method);
	APulong Result = g_APCRC32.ComputeCRC32_File(Filename, CRC32);
	g_APCRC32.CleanupCRC32System();
	return Result;
}

//------------------------------------------------------------------------------------------------
//--
//--AP_ComputeCRC32_ByteArray(*)
//--Version: 1.0
//--
//------------------------------------------------------------------------------------------------
APAPI APulong APSTDCALL AP_ComputeCRC32_ByteArray(const APuchar* Bytes, APlong Length, APulong& CRC32, CRC32METHOD Method)
{
	//--Initialize the CRC class, compute the CRC checksum, and then cleanup the CRC class
	g_APCRC32.InitializeCRC32System(Method);
	APulong Result = g_APCRC32.ComputeCRC32_ByteArray(Bytes, Length, CRC32);
	g_APCRC32.CleanupCRC32System();
	return Result;
}