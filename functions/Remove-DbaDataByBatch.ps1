function Remove-DbaDatabase {
    <#
.SYNOPSIS
Deletes data in  iterativly and cleans up after itself, preventing log file growth as much as possible.  Optionally backing up the logs for recovery.

.DESCRIPTION


.PARAMETER SqlInstance
The SQL Server instance(s) holding the database to have data removed from.

.PARAMETER SqlCredential
Login to the target instance using alternative credentials. Windows and SQL Authentication supported. Accepts credential objects (Get-Credential)

.PARAMETER Database
The database(s) to process - this list is auto-populated from the server. If unspecified, all databases will be processed.

.PARAMETER InputObject
A collection of databases (such as returned by Get-DbaDatabase), to be removed.

.PARAMETER IncludeSystemDb
Use this switch to disable any kind of verbose messages

.PARAMETER WhatIf
Shows what would happen if the command were to run. No actions are actually performed.

.PARAMETER Confirm
Prompts you for confirmation before executing any changing operations within the command.

.PARAMETER EnableException
        By default, when something goes wrong we try to catch it, interpret it and give you a friendly warning message.
        This avoids overwhelming you with "sea of red" exceptions, but is inconvenient because it basically disables advanced scripting.
        Using this switch turns this "nice by default" feature off and enables you to catch exceptions with your own try/catch.

.NOTES
Tags: Delete, Chunk

Website: https://dbatools.io
Copyright: (C) Chrissy LeMaire, clemaire@gmail.com
License: MIT https://opensource.org/licenses/MIT

.LINK
https://dbatools.io/Remove-DbaDatabase

.EXAMPLE
#>
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact = 'High', DefaultParameterSetName = "Default")]
    Param (
        [parameter(Mandatory, ParameterSetName = "instance")]
        [Alias("ServerInstance", "SqlServer")]
        [DbaInstanceParameter[]]$SqlInstance,
        [parameter(Mandatory = $false)]
        [Alias("Credential")]
        [PSCredential]
        $SqlCredential,
        [parameter(Mandatory, ParameterSetName = "instance")]
        [Alias("Databases")]
        [object[]]$Database,
        [Parameter(ValueFromPipeline, Mandatory, ParameterSetName = "databases")]
        [Microsoft.SqlServer.Management.Smo.Database[]]$InputObject,
        [switch]$IncludeSystemDb,
        [Alias('Silent')]
        [switch]$EnableException
    )

    process {
        #Construct a list of instance/databases
        #Construct the sql statement if one was not provided.
        
        #Test SqlStatement for inclusion of chunking pattern
            # what levels of sql server are we talking, shouldn't this be in the array in the begin block maybe?
            # chunk by top(x)  
                #verbosely explain we're using this method
            # chunk by dynamic SQL
                #verbosly explain why we have to use this
                

    }
}