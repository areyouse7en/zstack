CREATE TABLE `RoleAccountRefVO` (
    `roleUuid` VARCHAR(32) NOT NULL,
    `accountUuid` VARCHAR(32) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`roleUuid`,`accountUuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `RolePolicyRefVO` (
    `roleUuid` VARCHAR(32) NOT NULL,
    `policyUuid` VARCHAR(32) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`roleUuid`,`policyUuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `RoleUserGroupRefVO` (
    `roleUuid` VARCHAR(32) NOT NULL,
    `groupUuid` VARCHAR(32) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`roleUuid`,`groupUuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `RoleUserRefVO` (
    `roleUuid` VARCHAR(32) NOT NULL,
    `userUuid` VARCHAR(32) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`roleUuid`,`userUuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `RoleVO` (
    `uuid` VARCHAR(32) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `type` VARCHAR(32) NOT NULL,
    `state` VARCHAR(64) NOT NULL,
    `description` VARCHAR(2048) DEFAULT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `RolePolicyStatementVO` (
    `uuid` VARCHAR(32) NOT NULL,
    `roleUuid` VARCHAR(32) NOT NULL,
    `statement` VARCHAR(65535) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `IAM2GroupVirtualIDRefVO` (
    `virtualIDUuid` VARCHAR(32) NOT NULL,
    `groupUuid` VARCHAR(32) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`virtualIDUuid`,`groupUuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `IAM2OrganizationAttributeVO` (
    `uuid` VARCHAR(32) NOT NULL,
    `name` VARCHAR(2048) NOT NULL,
    `value` VARCHAR(2048) DEFAULT NULL,
    `type` VARCHAR(32) NOT NULL,
    `organizationUuid` VARCHAR(32) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `IAM2OrganizationVO` (
    `uuid` VARCHAR(32) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `description` VARCHAR(2048) DEFAULT NULL,
    `state` VARCHAR(64) NOT NULL,
    `type` VARCHAR(64) NOT NULL,
    `parentUuid` VARCHAR(32) DEFAULT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `IAM2ProjectAttributeVO` (
    `uuid` VARCHAR(32) NOT NULL,
    `name` VARCHAR(2048) NOT NULL,
    `value` VARCHAR(2048) DEFAULT NULL,
    `type` VARCHAR(32) NOT NULL,
    `projectUuid` VARCHAR(32) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `IAM2ProjectVirtualIDRefVO` (
    `virtualIDUuid` VARCHAR(32) NOT NULL,
    `projectUuid` VARCHAR(32) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`virtualIDUuid`,`projectUuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `IAM2ProjectVO` (
    `uuid` VARCHAR(32) NOT NULL,
    `name` VARCHAR(255) NOT NULL UNIQUE,
    `description` VARCHAR(2048) DEFAULT NULL,
    `state` VARCHAR(64) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `IAM2VirtualIDAttributeVO` (
    `uuid` VARCHAR(32) NOT NULL,
    `name` VARCHAR(2048) NOT NULL,
    `value` VARCHAR(2048) DEFAULT NULL,
    `type` VARCHAR(32) NOT NULL,
    `virtualIDUuid` VARCHAR(32) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `IAM2VirtualIDGroupAttributeVO` (
    `uuid` VARCHAR(32) NOT NULL,
    `name` VARCHAR(2048) NOT NULL,
    `value` VARCHAR(2048) DEFAULT NULL,
    `type` VARCHAR(32) NOT NULL,
    `groupUuid` VARCHAR(32) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `IAM2VirtualIDGroupRefVO` (
    `virtualIDUuid` VARCHAR(32) NOT NULL,
    `groupUuid` VARCHAR(32) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`virtualIDUuid`,`groupUuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `IAM2VirtualIDGroupRoleRefVO` (
    `roleUuid` VARCHAR(32) NOT NULL,
    `groupUuid` VARCHAR(32) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`roleUuid`,`groupUuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `IAM2VirtualIDGroupVO` (
    `uuid` VARCHAR(32) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `description` VARCHAR(2048) DEFAULT NULL,
    `projectUuid` VARCHAR(32) NOT NULL,
    `state` VARCHAR(64) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `IAM2VirtualIDRoleRefVO` (
    `virtualIDUuid` VARCHAR(32) NOT NULL,
    `roleUuid` VARCHAR(32) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`roleUuid`,`virtualIDUuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `IAM2VirtualIDVO` (
    `uuid` VARCHAR(32) NOT NULL,
    `name` VARCHAR(255) NOT NULL UNIQUE,
    `description` VARCHAR(2048) DEFAULT NULL,
    `password` VARCHAR(2048) NOT NULL,
    `state` VARCHAR(64) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE PolicyVO ADD COLUMN `type` varchar(32) NOT NULL DEFAULT 'System';

CREATE TABLE `SystemRoleVO` (
    `uuid` VARCHAR(32) NOT NULL,
    `systemRoleType` VARCHAR(64) NOT NULL,
    PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `IAM2ProjectAccountRefVO` (
    `accountUuid` VARCHAR(32) NOT NULL,
    `projectUuid` VARCHAR(32) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`accountUuid`,`projectUuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `IAM2VirtualIDOrganizationRefVO` (
    `virtualIDUuid` VARCHAR(32) NOT NULL,
    `organizationUuid` VARCHAR(32) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`virtualIDUuid`,`organizationUuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `IAM2ProjectTemplateVO` (
    `uuid` VARCHAR(32) NOT NULL,
    `name` VARCHAR(255) NOT NULL UNIQUE,
    `description` VARCHAR(2048) DEFAULT NULL,
    `template` VARCHAR(65535) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `zstack`.`SharedResourceVO` ADD COLUMN `permission` int unsigned DEFAULT 1;
ALTER TABLE `zstack`.`SNSTopicVO` ADD COLUMN `ownerType` varchar(32) DEFAULT 'Customized';
ALTER TABLE `zstack`.`SNSApplicationEndpointVO` ADD COLUMN `ownerType` varchar(32) DEFAULT 'Customized';

CREATE TABLE `TicketFlowVO` (
    `uuid` VARCHAR(32) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `description` VARCHAR(2048) DEFAULT NULL,
    `collectionUuid` VARCHAR(32) NOT NULL,
    `parentFlowUuid` VARCHAR(32) DEFAULT NULL,
    `flowContext` VARCHAR(65535) NOT NULL,
    `flowContextType` VARCHAR(255) NOT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `TicketFlowCollectionVO` (
    `uuid` VARCHAR(32) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `description` VARCHAR(2048) DEFAULT NULL,
    `isDefault` tinyint(1) unsigned DEFAULT 0,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `TicketStatusHistoryVO` (
    `uuid` VARCHAR(32) NOT NULL,
    `ticketUuid` VARCHAR(32) NOT NULL,
    `fromStatus` VARCHAR(255) NOT NULL,
    `toStatus` VARCHAR(255) NOT NULL,
    `comment` VARCHAR(65535) DEFAULT NULL,
    `operatorUuid` VARCHAR(32) NOT NULL,
    `operatorType` VARCHAR(255) NOT NULL,
    `operationContext` VARCHAR(65535) DEFAULT NULL,
    `operationContextType` VARCHAR(255) DEFAULT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `TicketVO` (
    `uuid` VARCHAR(32) NOT NULL,
    `name` VARCHAR(255) DEFAULT NULL,
    `description` VARCHAR(65535) DEFAULT NULL,
    `status` VARCHAR(255) NOT NULL,
    `accountSystemType` VARCHAR(255) NOT NULL,
    `accountSystemContext` VARCHAR(65535) DEFAULT NULL,
    `requests` VARCHAR(65535) NOT NULL,
    `flowCollectionUuid` VARCHAR(32) NOT NULL,
    `currentFlowUuid` VARCHAR(32) DEFAULT NULL,
    `lastOpDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
    `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# Foreign keys for table IAM2OrganizationAttributeVO

ALTER TABLE IAM2OrganizationAttributeVO ADD CONSTRAINT fkIAM2OrganizationAttributeVOIAM2OrganizationVO FOREIGN KEY (organizationUuid) REFERENCES IAM2OrganizationVO (uuid) ;

# Foreign keys for table IAM2ProjectAttributeVO

ALTER TABLE IAM2ProjectAttributeVO ADD CONSTRAINT fkIAM2ProjectAttributeVOIAM2ProjectVO FOREIGN KEY (projectUuid) REFERENCES IAM2ProjectVO (uuid) ;

# Foreign keys for table IAM2VirtualIDAttributeVO

ALTER TABLE IAM2VirtualIDAttributeVO ADD CONSTRAINT fkIAM2VirtualIDAttributeVOIAM2VirtualIDVO FOREIGN KEY (virtualIDUuid) REFERENCES IAM2VirtualIDVO (uuid) ;

# Foreign keys for table IAM2VirtualIDGroupAttributeVO

ALTER TABLE IAM2VirtualIDGroupAttributeVO ADD CONSTRAINT fkIAM2VirtualIDGroupAttributeVOIAM2VirtualIDGroupVO FOREIGN KEY (groupUuid) REFERENCES IAM2VirtualIDGroupVO (uuid) ;

# Foreign keys for table IAM2GroupVirtualIDRefVO

ALTER TABLE IAM2GroupVirtualIDRefVO ADD CONSTRAINT fkIAM2GroupVirtualIDRefVOIAM2VirtualIDGroupVO FOREIGN KEY (groupUuid) REFERENCES IAM2VirtualIDGroupVO (uuid) ON DELETE CASCADE;
ALTER TABLE IAM2GroupVirtualIDRefVO ADD CONSTRAINT fkIAM2GroupVirtualIDRefVOIAM2VirtualIDVO FOREIGN KEY (virtualIDUuid) REFERENCES IAM2VirtualIDVO (uuid) ON DELETE CASCADE;

# Foreign keys for table IAM2ProjectAccountRefVO

ALTER TABLE IAM2ProjectAccountRefVO ADD CONSTRAINT fkIAM2ProjectAccountRefVOAccountVO FOREIGN KEY (accountUuid) REFERENCES AccountVO (uuid) ON DELETE CASCADE;
ALTER TABLE IAM2ProjectAccountRefVO ADD CONSTRAINT fkIAM2ProjectAccountRefVOIAM2ProjectVO FOREIGN KEY (projectUuid) REFERENCES IAM2ProjectVO (uuid) ON DELETE CASCADE;

# Foreign keys for table IAM2ProjectVirtualIDRefVO

ALTER TABLE IAM2ProjectVirtualIDRefVO ADD CONSTRAINT fkIAM2ProjectVirtualIDRefVOIAM2ProjectVO FOREIGN KEY (projectUuid) REFERENCES IAM2ProjectVO (uuid) ON DELETE CASCADE;
ALTER TABLE IAM2ProjectVirtualIDRefVO ADD CONSTRAINT fkIAM2ProjectVirtualIDRefVOIAM2VirtualIDVO FOREIGN KEY (virtualIDUuid) REFERENCES IAM2VirtualIDVO (uuid) ON DELETE CASCADE;

# Foreign keys for table IAM2VirtualIDGroupRefVO

ALTER TABLE IAM2VirtualIDGroupRefVO ADD CONSTRAINT fkIAM2VirtualIDGroupRefVOIAM2VirtualIDGroupVO FOREIGN KEY (groupUuid) REFERENCES IAM2VirtualIDGroupVO (uuid) ON DELETE CASCADE;
ALTER TABLE IAM2VirtualIDGroupRefVO ADD CONSTRAINT fkIAM2VirtualIDGroupRefVOIAM2VirtualIDVO FOREIGN KEY (virtualIDUuid) REFERENCES IAM2VirtualIDVO (uuid) ON DELETE CASCADE;

# Foreign keys for table IAM2VirtualIDGroupRoleRefVO

ALTER TABLE IAM2VirtualIDGroupRoleRefVO ADD CONSTRAINT fkIAM2VirtualIDGroupRoleRefVOIAM2VirtualIDGroupVO FOREIGN KEY (groupUuid) REFERENCES IAM2VirtualIDGroupVO (uuid) ON DELETE CASCADE;
ALTER TABLE IAM2VirtualIDGroupRoleRefVO ADD CONSTRAINT fkIAM2VirtualIDGroupRoleRefVORoleVO FOREIGN KEY (roleUuid) REFERENCES RoleVO (uuid) ON DELETE CASCADE;

# Foreign keys for table IAM2VirtualIDOrganizationRefVO

ALTER TABLE IAM2VirtualIDOrganizationRefVO ADD CONSTRAINT fkIAM2VirtualIDOrganizationRefVOIAM2OrganizationVO FOREIGN KEY (organizationUuid) REFERENCES IAM2OrganizationVO (uuid) ON DELETE CASCADE;
ALTER TABLE IAM2VirtualIDOrganizationRefVO ADD CONSTRAINT fkIAM2VirtualIDOrganizationRefVOIAM2VirtualIDVO FOREIGN KEY (virtualIDUuid) REFERENCES IAM2VirtualIDVO (uuid) ON DELETE CASCADE;

# Foreign keys for table IAM2VirtualIDRoleRefVO

ALTER TABLE IAM2VirtualIDRoleRefVO ADD CONSTRAINT fkIAM2VirtualIDRoleRefVOIAM2VirtualIDVO FOREIGN KEY (virtualIDUuid) REFERENCES IAM2VirtualIDVO (uuid) ON DELETE CASCADE;
ALTER TABLE IAM2VirtualIDRoleRefVO ADD CONSTRAINT fkIAM2VirtualIDRoleRefVORoleVO FOREIGN KEY (roleUuid) REFERENCES RoleVO (uuid) ON DELETE CASCADE;

ALTER TABLE SharedResourceVO ADD CONSTRAINT fkSharedResourceVOResourceVO FOREIGN KEY (resourceUuid) REFERENCES ResourceVO (uuid) ON DELETE CASCADE;

# Foreign keys for table RolePolicyRefVO

ALTER TABLE RolePolicyRefVO ADD CONSTRAINT fkRolePolicyRefVOPolicyVO FOREIGN KEY (policyUuid) REFERENCES PolicyVO (uuid) ON DELETE CASCADE;
ALTER TABLE RolePolicyRefVO ADD CONSTRAINT fkRolePolicyRefVORoleVO FOREIGN KEY (roleUuid) REFERENCES RoleVO (uuid) ON DELETE CASCADE;
