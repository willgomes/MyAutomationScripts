# cd Project's path must be accessed

$SourceDev = 'develop'
$SourceHomolog = 'homolog'
$SourceMaster = 'master'

$draftHomlog = 'false';

$NeedSourceDev = $false
$devAutoComplete = 'false';

$ProjectName = ''
$RepositoryName = ''
$WorkItems = "1".split(',') | % {iex $_}
$Title = ''
$Description = ''.Split(',')



If($NeedSourceDev)
{
    az repos pr create -p $ProjectName -r $RepositoryName --work-items $WorkItems --title $Title -d $Description -t $SourceDev --draft false --auto-complete $devAutoComplete
    $draftHomlog = 'true';
}

az repos pr create -p $ProjectName -r $RepositoryName --work-items $WorkItems --title $Title -d $Description -t $SourceHomolog --draft $draftHomlog
az repos pr create -p $ProjectName -r $RepositoryName --work-items $WorkItems --title $Title -d $Description -t $SourceMaster --draft true