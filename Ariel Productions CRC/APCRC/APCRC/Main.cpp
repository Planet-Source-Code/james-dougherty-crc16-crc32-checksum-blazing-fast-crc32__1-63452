//::|����������������������������������������������������������������������������������������|::
//::|�� ---------------------------------------------------------------------------------- ��|::
//::|��|						~ A R I E L   P R O D U C T I O N S ~                     |��|::
//::|��|                               ~ ALL RIGHTS RESERVED ~                            |��|::
//::|�� ---------------------------------------------------------------------------------- ��|::
//::|��| ~ PROGRAM DATA ~													      /-----/ |��|::
//::|��|							            								/-----/ | |��|::
//::|��| PROGRAMMER:: James Dougherty											| |   | | |��|::
//::|��| COPYRIGHT :: �2005 Ariel Productions									| |   | | |��|::
//::|��| TYPE      :: Checksum Library											| /---|-/ |��|::
//::|��|																		/-----/   |��|::
//::|�� ---------------------------------------------------------------------------------- ��|::
//::|��| ~ SOURCE DATA ~																  |��|::
//::|��|																				  |��|::
//::|��| FILENAME :: Main.cpp															  |��|::
//::|��| VERSION  :: 1.0																  |��|::
//::|��|																				  |��|::
//::|��| HISTORY DATA																	  |��|::
//::|��| | 																				  |��|::
//::|��| |-N/A																			  |��|::
//::|��| |																				  |��|::
//::|��|																				  |��|::
//::|��| BUGS																			  |��|::
//::|��| |																				  |��|::
//::|��| |-N/A																			  |��|::
//::|��| |																				  |��|::
//::|��|																				  |��|::
//::|�� ---------------------------------------------------------------------------------- ��|::
//::|����������������������������������������������������������������������������������������|::
//::|�� ---------------------------------------------------------------------------------- ��|::
//::|��| This program is Copyright �2005 Ariel Productions (James Dougherty). This		  |��|::
//::|��| program is not in the public domain, therefore, it is not open source and all	  |��|::
//::|��| copyrights remain intact. This program constitutes proprietary information and   |��|::
//::|��| trade secrets of Ariel Productions, Ashland, Ohio. This program or any part of   |��|::
//::|��| this program may not be copied, sold, rented, leased, given, assigned, or		  |��|::
//::|��| otherwise made available to any other individual or organization without the     |��|::
//::|��| written consent of Ariel Productions. Also, no part of this unpublished work may |��|::
//::|��| be reproduced, transmitted, or stored in a retrieval system. Nor can this		  |��|::
//::|��| program be translated into any human or computer language in any form or by any  |��|::
//::|��| means electronically, mechanically, magnetically, optically, chemically, manual  |��|::
//::|��| or otherwise without the written permission of the copyright owner				  |��|::
//::|��| (Ariel Productions). Contact information is listed below for more information.   |��|::
//::|��|																				  |��|::
//::|��| Ariel Productions																  |��|::
//::|��| James Dougherty																  |��|::
//::|��| arielproductions@zoominternet.net												  |��|::
//::|��|																				  |��|::
//::|�� ---------------------------------------------------------------------------------- ��|::
//::|����������������������������������������������������������������������������������������|::

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