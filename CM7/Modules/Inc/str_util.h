// Module..: STR_UTIL.H
// Chip....: STM32F4xx
//-----------------------------------------------------------------------------

#ifndef __STR_UTIL_H__
#define __STR_UTIL_H__
//#pragma once
//-----------------------------------------------------------------------------

  //---------------------------------------------------------------------------

  static bool isfloat(char* s)
  {
    char c;

    if (*s == '-')
    {
      s++;
    }

    c = *s++;

    while (c != ' ' && c != ',' && c > 0)
    {
      if (c == '.')
      {
        return (true);
      }

      c = *s++;
    }

    return (false);
  }
  //---------------------------------------------------------------------------

  static char* skip_chars(char* s)
  {
    while (*s && *s != ',' && *s != ' ')
    {
      s++;
    }

    return (s);
  }
  //---------------------------------------------------------------------------

  static char* skip_blanks(char* s)
  {
    while (*s == ' ' || *s == ',')
    {
      s++;
    }

    return (s);
  }

  static char* remove_CRLF(char* s)
  {
	  for (int i = 0; i < strlen(s) ; i++)
	  {
		  if (s[i] == 0x0a || s[i] == 0x0d)
		  {
			  s[i] = 0x00;
		  }
	  }
	  return (s);
  }

#endif
