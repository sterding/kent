/* strex.h - interface to string expression language,  currently used in tabToTabDir
 * to describe how the output fields are filled in from input fields. */

#ifndef STREX_H
#define STREX_H

/* Parsing out something into strex */
struct strexParse;    /* A parser generated tree */

typedef char* (*StrexLookup)(void *symbols, char *key);
/* Callback to lookup value of key in a symbol table. */

struct strexParse *strexParseString(char *s, char *fileName, int fileLineNumber,
    void *symbols, StrexLookup lookup);
/* Parse out string expression in s and return root of tree. The fileName and 
 * fileLineNumber are just used in the error messages.  Ideally they should help 
 * the user navigate to where the problem was. 
 *    If symbols is non-null then it and lookup will be used together to complain
 *    about missing variables rather than just generating empty strings when 
 *    they are referenced. */

struct strexParse *strexParseFile(char *fileName, void *symbols, StrexLookup lookup);
/* Similar to strexParseString, but get input from a file rather than a string */

void strexParseDump(struct strexParse *p, int depth, FILE *f);
/* Dump out strexParse tree and children for debugging.  Usual depth is 0. */

/* Evaluating a parsed out strex expression */

char *strexEvalAsString(struct strexParse *p, void *symbols, StrexLookup lookup,
    void (*warnHandler)(void *symbols, char *warning), void (*abortHandler)(void *symbols) );
/* Evaluating a strex expression on a symbol table with a lookup function for variables and
 * return result as a string value.  The warnHandler and abortHandler are optional,
 * and can be used to wrap your own warnings and abort processing onto what strex
 * provides.  For default behavior just pass in NULL. */

#endif /* STREX_H */

