<apex:page standardController="Account" extensions="CreateAccount"> <apex:form id="apexFrom" >
<apex:pageBlock title="Create Account:" id="pageBlockId">
<apex:pageMessages id="showmsg"></apex:pageMessages> <apex:pageBlockSection columns="2" >
<!--<div class = "requiredInput">
<div class = "requiredBlock"></div>
<apex:inputText value="{!name}" label="Account Name" required="true"/> </div>-->
<apex:inputText value="{!name}" label="Account Name" required="true"/> <apex:inputText value="{!phoneNumber}" label="Phone" /> <apex:selectList size="1" value="{!selectedname}" label="Industry">
<apex:selectOptions value="{!lstnamesel}"/>
</apex:selectList>
<apex:inputText value="{!websiteURL}" label="Website"/>
</apex:pageBlockSection>
<apex:pageBlockButtons >

<apex:commandButton action="{!createAccount}" value="Save"/> <apex:commandButton action="{!cancelAccount}" value="Cancel"/>
</apex:pageBlockButtons>
</apex:pageBlock>

<!-- ACTION FUNCTIONS-->
<apex:actionFunction name="createFunction" action="{!createAccount}"/> <apex:actionFunction name="cancelFunction" action="{!cancelAccount}"/>
</apex:form>
</apex:page>
