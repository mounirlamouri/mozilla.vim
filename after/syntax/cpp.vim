" Vim syntax file
" Language:    C++ (Gecko)
" Maintainer:  Fabien Cazenave (:kaze)
" Last Change: 2012-10-18
" Extends:     $VIMRUNTIME/syntax/cpp.vim


"|
"| Gecko Types and Constants
"|------------------------------------------------------------------------------
"|

syn keyword moz_boolean   PR_TRUE PR_FALSE
syn keyword moz_constant  nsnull NS_OK NS_HTML_TAG_MAX

syn keyword moz_type      PRBool PRInt16 PRInt32 PRInt64 PRInt8 PROffset32
syn keyword moz_type      PROffset64 PRPackedBool PRSize PRUint16 PRUint32
syn keyword moz_type      PRUint64 PRUint8 PRUnichar PRUptrdiff

syn keyword moz_type_ns   nsAString nsAutoPtr nsAutoString nsAutoTArray
syn keyword moz_type_ns   nsCOMArray nsCOMPtr nsRefPtr nsTArray nsWeakPtr
syn keyword moz_type_ns   NS_IMETHOD NS_IMETHODIMP
syn keyword moz_type_ns   nsresult


"|
"| Gecko Helpers
"|------------------------------------------------------------------------------
"|

syn keyword moz_util      address_of getter_AddRefs
syn keyword moz_util      do_CreateInstance do_GetAtom do_GetService
syn keyword moz_util      do_GetWeakReference do_QueryInterface do_QueryReferent

syn keyword moz_assert    NS_ASSERTION NS_ENSURE_SUCCESS NS_ENSURE_TRUE
syn keyword moz_assert    NS_ENSURE_STATE NS_ENSURE_ARG_POINTER NS_SUCCEEDED
syn keyword moz_assert    NS_FAILED NS_NOTREACHED NS_IF_RELEASE NS_IF_ADDREF
syn keyword moz_assert    NS_PRECONDITION

syn keyword moz_util      NS_ABS NS_ADDREF NS_DEFINE_CID NS_DEFINE_NAMED_CID
syn keyword moz_util      NS_LITERAL_STRING NS_MIN NS_NAMED_LITERAL_STRING
syn keyword moz_util      NS_RELEASE

syn keyword moz_util      NS_NewAtom NS_NewHTMLURIRefObject
syn keyword moz_util      NS_NewISupportsArray NS_NewRunnableMethod NS_NewURI


"|
"| Gecko Components
"|------------------------------------------------------------------------------
"| find src/mozilla -regex ".*\.\(idl\|h\)" -exec grep "^\(class\|interface\)\s*nsI" '{}' \;
"|   | sed 's/\(:\|;\|,\|{\).*$//' | sed 's/^.*nsI/nsI/' | sed 's/\s*$//'                 \
"|   | sort -u | grep nsIDOM -v
"|

  syn keyword moz_component  nsIAboutModule nsIAbsorbingTransaction nsIAccessibilityService nsIAccessible
  syn keyword moz_component  nsIAccessibleApplication nsIAccessibleCaretMoveEvent nsIAccessibleCoordinateType
  syn keyword moz_component  nsIAccessibleCursorable nsIAccessibleDocument nsIAccessibleEditableText
  syn keyword moz_component  nsIAccessibleEvent nsIAccessibleHideEvent nsIAccessibleHyperLink
  syn keyword moz_component  nsIAccessibleHyperText nsIAccessibleImage nsIAccessiblePivot
  syn keyword moz_component  nsIAccessiblePivotObserver nsIAccessibleProvider nsIAccessibleRelation
  syn keyword moz_component  nsIAccessibleRetrieval nsIAccessibleRole nsIAccessibleScrollType
  syn keyword moz_component  nsIAccessibleSelectable nsIAccessibleStateChangeEvent nsIAccessibleStates
  syn keyword moz_component  nsIAccessibleTable nsIAccessibleTableCell nsIAccessibleTableChangeEvent
  syn keyword moz_component  nsIAccessibleText nsIAccessibleTextChangeEvent nsIAccessibleTraversalRule
  syn keyword moz_component  nsIAccessibleValue nsIAccessibleVirtualCursorChangeEvent nsIActivityProxy
  syn keyword moz_component  nsIActivityUIGlue nsIActivityUIGlueCallback nsIAlarmFiredCb nsIAlarmHalService
  syn keyword moz_component  nsIAlertsProgressListener nsIAlertsService nsIAndroidBridge nsIAndroidBrowserApp
  syn keyword moz_component  nsIAndroidDisplayport nsIAndroidViewport nsIAnnotationObserver
  syn keyword moz_component  nsIAnnotationService nsIAnonymousContentCreator nsIAppleFileDecoder
  syn keyword moz_component  nsIApplicationCache nsIApplicationCacheChannel nsIApplicationCacheContainer
  syn keyword moz_component  nsIApplicationCacheNamespace nsIApplicationCacheService
  syn keyword moz_component  nsIApplicationUpdateService nsIAppShell nsIAppShellService nsIAppsService
  syn keyword moz_component  nsIAppStartup nsIArray nsIASN1Object nsIASN1PrintableItem nsIASN1Sequence
  syn keyword moz_component  nsIASN1Tree nsIAssociatedContentSecurity nsIAsyncInputStream
  syn keyword moz_component  nsIAsyncOutputStream nsIAsyncStreamCopier nsIAsyncVerifyRedirectCallback nsIAtom
  syn keyword moz_component  nsIAtomService nsIAttribute nsIAudioManager nsIAuthInformation nsIAuthModule
  syn keyword moz_component  nsIAuthPrompt nsIAuthPrompt2 nsIAuthPromptAdapterFactory nsIAuthPromptCallback
  syn keyword moz_component  nsIAuthPromptProvider nsIAutoCompleteController nsIAutoCompleteInput
  syn keyword moz_component  nsIAutoCompleteItem nsIAutoCompleteListener nsIAutoCompleteObserver
  syn keyword moz_component  nsIAutoCompletePopup nsIAutoCompleteResult nsIAutoCompleteResults
  syn keyword moz_component  nsIAutoCompleteSearch nsIAutoCompleteSearchDescriptor nsIAutoCompleteSession
  syn keyword moz_component  nsIAutoCompleteSimpleResult nsIAutoCompleteSimpleResultListener
  syn keyword moz_component  nsIAutoCompleteStatus nsIAutoConfig nsIB2GCameraContent nsIB2GKeyboard
  syn keyword moz_component  nsIBadCertListener2 nsIBaseWindow nsIBasicDecoder nsIBasicEncoder
  syn keyword moz_component  nsIBFCacheEntry nsIBidiKeyboard nsIBidirectionalEnumerator
  syn keyword moz_component  nsIBidirectionalIterator nsIBinaryInputStream nsIBinaryOutputStream
  syn keyword moz_component  nsIBlocklistPrompt nsIBlocklistService nsIBoxObject nsIBrowserBoxObject
  syn keyword moz_component  nsIBrowserDOMWindow nsIBrowserGlue nsIBrowserHandler nsIBrowserHistory
  syn keyword moz_component  nsIBrowserProfileMigrator nsIBrowserSearchInitObserver nsIBrowserSearchService
  syn keyword moz_component  nsIBrowserTab nsIBufEntropyCollector nsIBufferedInputStream
  syn keyword moz_component  nsIBufferedOutputStream nsIByteBuffer nsIByteRangeRequest nsICache
  syn keyword moz_component  nsICacheDeviceInfo nsICacheEntryDescriptor nsICacheEntryInfo nsICacheInfoChannel
  syn keyword moz_component  nsICacheListener nsICacheMetaDataVisitor nsICacheService nsICacheSession
  syn keyword moz_component  nsICacheVisitor nsICachingChannel nsICameraAutoFocusCallback
  syn keyword moz_component  nsICameraCapabilities nsICameraClosedCallback nsICameraControl
  syn keyword moz_component  nsICameraErrorCallback nsICameraGetCameraCallback nsICameraPreviewStreamCallback
  syn keyword moz_component  nsICameraShutterCallback nsICameraStartRecordingCallback
  syn keyword moz_component  nsICameraTakePictureCallback nsICancelable nsICanvasElementExternal
  syn keyword moz_component  nsICanvasGLBuffer nsICanvasGLTexture nsICanvasRenderingContextInternal
  syn keyword moz_component  nsICapturePicker nsICaseConversion nsICategoryManager nsICDocShellTreeOwner
  syn keyword moz_component  nsICertificateDialogs nsICertOverrideService nsICertPickDialogs nsICertTree
  syn keyword moz_component  nsICertTreeItem nsICertVerificationListener nsICertVerificationResult nsIChannel
  syn keyword moz_component  nsIChannelEventSink nsIChannelPolicy nsICharsetConverterManager
  syn keyword moz_component  nsICharsetDetectionObserver nsICharsetDetector nsIChildChannel nsIChromeRegistry
  syn keyword moz_component  nsIClassInfo nsIClientAuthDialogs nsIClientAuthUserDecision nsIClipboard
  syn keyword moz_component  nsIClipboardCommands nsIClipboardDragDropHookList nsIClipboardDragDropHooks
  syn keyword moz_component  nsIClipboardHelper nsIClipboardOwner nsICmdLineService nsICMSDecoder
  syn keyword moz_component  nsICMSEncoder nsICMSMessage nsICMSMessage2 nsICMSMessageErrors
  syn keyword moz_component  nsICMSSecureMessage nsICODecoder nsICOEncoder nsICollation nsICollationFactory
  syn keyword moz_component  nsICollection nsIComboboxControlFrame nsICommandController nsICommandHandler
  syn keyword moz_component  nsICommandHandlerInit nsICommandLine nsICommandLineHandler nsICommandLineRunner
  syn keyword moz_component  nsICommandLineValidator nsICommandManager nsICommandParams nsIComponentLoader
  syn keyword moz_component  nsIComponentManager nsIComponentRegistrar nsIconChannel nsIconDecoder
  syn keyword moz_component  nsIconProtocolHandler nsIConsoleListener nsIConsoleMessage nsIConsoleService
  syn keyword moz_component  nsIConstraintValidation nsIContainerBoxObject nsIContent
  syn keyword moz_component  nsIContentDispatchChooser nsIContentFilter nsIContentFrameMessageManager
  syn keyword moz_component  nsIContentHandler nsIContentIterator nsIContentPermissionPrompt
  syn keyword moz_component  nsIContentPermissionRequest nsIContentPolicy nsIContentPrefCallback
  syn keyword moz_component  nsIContentPrefObserver nsIContentPrefService nsIContentSecurityPolicy
  syn keyword moz_component  nsIContentSerializer nsIContentSink nsIContentSniffer nsIContentURIGrouper
  syn keyword moz_component  nsIContentView nsIContentViewer nsIContentViewerContainer nsIContentViewerEdit
  syn keyword moz_component  nsIContentViewerFile nsIContentViewManager nsIContextMenuInfo
  syn keyword moz_component  nsIContextMenuListener nsIContextMenuListener2 nsIController
  syn keyword moz_component  nsIControllerCommand nsIControllerCommandGroup nsIControllerCommandTable
  syn keyword moz_component  nsIControllerContext nsIControllers nsIConverterInputStream
  syn keyword moz_component  nsIConverterOutputStream nsICookie nsICookie2 nsICookieAcceptDialog
  syn keyword moz_component  nsICookieManager nsICookieManager2 nsICookiePermission nsICookiePromptService
  syn keyword moz_component  nsICookieService nsICrashReporter nsICRLInfo nsICRLManager nsICryptoFIPSInfo
  syn keyword moz_component  nsICryptoHash nsICryptoHMAC nsICSSAnonBoxPseudo nsICSSDeclaration
  syn keyword moz_component  nsICSSLoaderObserver nsICSSPseudoComparator nsICSSPseudoElement nsICSSRuleList
  syn keyword moz_component  nsICSSStyleRuleDOMWrapper nsICurrentCharsetListener nsICycleCollectorHandler
  syn keyword moz_component  nsICycleCollectorListener nsIDataObjCollection nsIDataSignatureVerifier
  syn keyword moz_component  nsIDataType nsIDateTimeFormat nsIDBusHandlerApp nsIDebug nsIDebug2
  syn keyword moz_component  nsIDebugDumpContent nsIdentifierMapEntry nsIDeviceContextSpec
  syn keyword moz_component  nsIDeviceSensorData nsIDeviceSensors nsIDHashKey nsIDialogCreator
  syn keyword moz_component  nsIDialogParamBlock nsIDirectoryEnumerator nsIDirectoryService
  syn keyword moz_component  nsIDirectoryServiceProvider nsIDirectoryServiceProvider2 nsIDirIndex
  syn keyword moz_component  nsIDirIndexListener nsIDirIndexParser nsIDiskCacheStreamInternal nsIdleService
  syn keyword moz_component  nsIdleServiceAndroid nsIdleServiceDaily nsIdleServiceGonk nsIdleServiceGTK
  syn keyword moz_component  nsIdleServiceOS2 nsIdleServiceQt nsIdleServiceWin nsIdleServiceX nsIDNService
  syn keyword moz_component  nsIDNSListener nsIDNSRecord nsIDNSRequest nsIDNSService nsIDocCharset
  syn keyword moz_component  nsIDocShell nsIDocShellHistory nsIDocShellLoadInfo nsIDocShellTreeItem
  syn keyword moz_component  nsIDocShellTreeNode nsIDocShellTreeOwner nsIDocument nsIDocumentEncoder
  syn keyword moz_component  nsIDocumentEncoderNodeFixup nsIDocumentLoader nsIDocumentLoaderFactory
  syn keyword moz_component  nsIDocumentObserver nsIDocumentStateListener nsIDocumentTransformer
  syn keyword moz_component  nsIDocumentViewerPrint nsIDownload nsIDownloader nsIDownloadHistory
  syn keyword moz_component  nsIDownloadManager nsIDownloadManagerUI nsIDownloadObserver
  syn keyword moz_component  nsIDownloadProgressListener nsIDragService nsIDragSession nsIDragSessionOS2
  syn keyword moz_component  nsIDroppedLinkHandler nsIDTD nsIEditActionListener nsIEditingSession nsIEditor
  syn keyword moz_component  nsIEditorBoxObject nsIEditorDocShell nsIEditorIMESupport nsIEditorMailSupport
  syn keyword moz_component  nsIEditorSpellCheck nsIEditorStyleSheets nsIEditRules nsIEffectiveTLDService
  syn keyword moz_component  nsIEHistoryEnumerator nsIElementObserver nsIEmbeddingSiteWindow
  syn keyword moz_component  nsIEncodedChannel nsIEntityConverter nsIEntropyCollector nsIEnumerator
  syn keyword moz_component  nsIEnvironment nsIErrorService nsIEventListenerInfo nsIEventListenerService
  syn keyword moz_component  nsIEventSource nsIEventTarget nsIException nsIExceptionManager
  syn keyword moz_component  nsIExceptionProvider nsIExceptionService nsIExpandedPrincipal nsIExpatSink
  syn keyword moz_component  nsIExtendedExpatSink nsIExternalHelperAppService nsIExternalProtocolHandler
  syn keyword moz_component  nsIExternalProtocolService nsIExternalSharingAppService
  syn keyword moz_component  nsIExternalURLHandlerService nsIFactory nsIFaviconDataCallback nsIFaviconService
  syn keyword moz_component  nsIFeed nsIFeedContainer nsIFeedElementBase nsIFeedEntry nsIFeedGenerator
  syn keyword moz_component  nsIFeedPerson nsIFeedProcessor nsIFeedProgressListener nsIFeedResult
  syn keyword moz_component  nsIFeedResultListener nsIFeedResultService nsIFeedTextConstruct nsIFeedWriter
  syn keyword moz_component  nsIFile nsIFileChannel nsIFileInputStream nsIFileMetadata nsIFileOutputStream
  syn keyword moz_component  nsIFilePicker nsIFilePickerShownCallback nsIFileProtocolHandler nsIFileStorage
  syn keyword moz_component  nsIFileStream nsIFileURL nsIFileView nsIFind nsIFindService
  syn keyword moz_component  nsIFlavorDataProvider nsIFMRadio nsIFMRadioSettings nsIFocusManager
  syn keyword moz_component  nsIFontEnumerator nsIForm nsIFormatConverter nsIFormAutoComplete nsIFormControl
  syn keyword moz_component  nsIFormControlFrame nsIFormFillController nsIFormHistory2 nsIFormProcessor
  syn keyword moz_component  nsIFormSigningDialog nsIFormSubmitObserver nsIForwardIterator
  syn keyword moz_component  nsIFragmentContentSink nsIFrame nsIFrameLoader nsIFrameLoaderOwner
  syn keyword moz_component  nsIFrameRequestCallback nsIFrameScriptLoader nsIFrameUtil nsIFTPChannel
  syn keyword moz_component  nsIFTPEventSink nsIGConfService nsIGeneratingKeypairInfoDialogs
  syn keyword moz_component  nsIGeolocationPrompt nsIGeolocationProvider nsIGeolocationUpdate
  syn keyword moz_component  nsIGetUserMediaDevicesSuccessCallback nsIGfxInfo nsIGfxInfoDebug nsIGIOMimeApp
  syn keyword moz_component  nsIGIOService nsIGlobalHistory2 nsIGnomeVFSMimeApp nsIGnomeVFSService
  syn keyword moz_component  nsIGridPart nsIGSettingsCollection nsIGSettingsService nsIGtkQtIconsConverter
  syn keyword moz_component  nsIGZFileWriter nsIHandlerApp nsIHandlerInfo nsIHandlerService nsIHapticFeedback
  syn keyword moz_component  nsIHashable nsIHelperAppLauncher nsIHelperAppLauncherDialog nsIHistoryEntry
  syn keyword moz_component  nsIHTMLAbsPosEditor nsIHTMLCollection nsIHTMLContentSink nsIHTMLDocument
  syn keyword moz_component  nsIHTMLEditor nsIHTMLInlineTableEditor nsIHTMLMenu nsIHTMLObjectResizeListener
  syn keyword moz_component  nsIHTMLObjectResizer nsIHttpActivityDistributor nsIHttpActivityObserver
  syn keyword moz_component  nsIHttpAuthenticableChannel nsIHttpAuthenticator nsIHttpAuthManager
  syn keyword moz_component  nsIHttpChannel nsIHttpChannelAuthProvider nsIHttpChannelChild
  syn keyword moz_component  nsIHttpChannelInternal nsIHttpEventSink nsIHTTPHeaderListener
  syn keyword moz_component  nsIHttpHeaderVisitor nsIHTTPIndex nsIHttpProtocolHandler nsIHttpRequest
  syn keyword moz_component  nsIHttpRequestHandler nsIHttpResponse nsIHttpServer nsIHttpServerIdentity
  syn keyword moz_component  nsIHttpServerStoppedCallback nsIHttpUpgradeListener nsIICCRecords nsIIDBCursor
  syn keyword moz_component  nsIIDBCursorWithValue nsIIDBDatabase nsIIDBFactory nsIIDBFileHandle nsIIDBIndex
  syn keyword moz_component  nsIIDBKeyRange nsIIDBObjectStore nsIIDBOpenDBRequest nsIIDBRequest
  syn keyword moz_component  nsIIDBTransaction nsIIDBVersionChangeEvent nsIIdentityCryptoService
  syn keyword moz_component  nsIIdentityInfo nsIIdentityKeyGenCallback nsIIdentityKeyPair
  syn keyword moz_component  nsIIdentitySignCallback nsIIdleObserver nsIIdleService nsIIdleServiceInternal
  syn keyword moz_component  nsIIDNService nsIIFrameBoxObject nsIImageDocument nsIImageLoadingContent
  syn keyword moz_component  nsIImageToPixbuf nsIIMEPicker nsIIncrementalDownload nsIIndexedDatabaseManager
  syn keyword moz_component  nsIIndexedDatabaseUsageCallback nsIINIParser nsIINIParserFactory
  syn keyword moz_component  nsIINIParserWriter nsIInlineEventHandlers nsIInlineSpellChecker
  syn keyword moz_component  nsIInProcessContentFrameMessageManager nsIInputIterator nsIInputListAutoComplete
  syn keyword moz_component  nsIInputStream nsIInputStreamCallback nsIInputStreamChannel nsIInputStreamPump
  syn keyword moz_component  nsIInputStreamTee nsIInterfaceInfo nsIInterfaceInfoManager
  syn keyword moz_component  nsIInterfaceInfoSuperManager nsIInterfaceRequestor nsIIOService nsIIOService2
  syn keyword moz_component  nsIIOUtil nsIIPCSerializableInputStream nsIJARChannel nsIJARProtocolHandler
  syn keyword moz_component  nsIJARURI nsIJSArgArray nsIJSCID nsIJSContextStack nsIJSContextStackIterator
  syn keyword moz_component  nsIJSEngineTelemetryStats nsIJSEventListener nsIJSID nsIJSIID nsIJSInspector
  syn keyword moz_component  nsIJSNativeInitializer nsIJSON nsIJSRuntimeService nsIJSXMLHttpRequest
  syn keyword moz_component  nsIJumpListBuilder nsIJumpListItem nsIJumpListLink nsIJumpListSeparator
  syn keyword moz_component  nsIJumpListShortcut nsIKeygenThread nsIKeyObject nsIKeyObjectFactory
  syn keyword moz_component  nsILanguageAtomService nsILayoutDebugger nsILayoutDebuggingTools
  syn keyword moz_component  nsILayoutHistoryState nsILayoutRegressionTester nsILDAPSyncQuery nsILDAPURL
  syn keyword moz_component  nsILineBreaker nsILineBreakSink nsILineInputStream nsILineIterator nsILink
  syn keyword moz_component  nsILinkHandler nsIListBoxObject nsIListControlFrame nsILivemarkService
  syn keyword moz_component  nsILoadContext nsILoadGroup nsILocale nsILocaleService nsILocalFile
  syn keyword moz_component  nsILocalFileMac nsILocalFileOS2 nsILocalFileWin nsILocalHandlerApp nsILocalStore
  syn keyword moz_component  nsILoginInfo nsILoginManager nsILoginManagerCrypto
  syn keyword moz_component  nsILoginManagerIEMigrationHelper nsILoginManagerPrompter nsILoginManagerStorage
  syn keyword moz_component  nsILoginMetaInfo nsIMacDockSupport nsIMacShellService nsIMacUtils
  syn keyword moz_component  nsIMacWebAppUtils nsImageBoxFrame nsImageBoxListener nsImageFrame
  syn keyword moz_component  nsImageFromClipboard nsImageListener nsImageLoadingContent nsImageMap
  syn keyword moz_component  nsImageRenderer nsImageToClipboard nsImageToPixbuf nsIMarkupDocumentViewer
  syn keyword moz_component  nsIMathMLFrame nsIMEContext nsIMediaDevice nsIMediaStreamOptions nsIMemory
  syn keyword moz_component  nsIMemoryMultiReporter nsIMemoryMultiReporterCallback nsIMemoryReporter
  syn keyword moz_component  nsIMemoryReporterManager nsIMenuBoxObject nsIMenuBuilder nsIMenuItem nsIMEPicker
  syn keyword moz_component  nsIMessageBroadcaster nsIMessageListener nsIMessageListenerManager
  syn keyword moz_component  nsIMessageSender nsIMEStateManager nsIMIMEHeaderParam nsIMIMEInfo
  syn keyword moz_component  nsIMIMEInputStream nsIMIMEService nsIMM32Handler nsIMmsService
  syn keyword moz_component  nsIMobileConnectionProvider nsIModule nsIMozBrowserFrame nsIMozIconURI
  syn keyword moz_component  nsIMozNavigatorMobileConnection nsIMultiPartChannel nsIMultiplexInputStream
  syn keyword moz_component  nsIMutable nsIMutableArray nsIMutationObserver nsIMutationObserverCallback
  syn keyword moz_component  nsINameSpaceManager nsINativeAppSupport nsINativeKeyBindings
  syn keyword moz_component  nsINativeMenuService nsINativeTreeSelection nsINativeTreeView
  syn keyword moz_component  nsINavBookmarkObserver nsINavBookmarksService nsINavHistoryBatchCallback
  syn keyword moz_component  nsINavHistoryContainerResultNode nsINavHistoryFullVisitResultNode
  syn keyword moz_component  nsINavHistoryObserver nsINavHistoryQuery nsINavHistoryQueryOptions
  syn keyword moz_component  nsINavHistoryQueryResultNode nsINavHistoryResult nsINavHistoryResultNode
  syn keyword moz_component  nsINavHistoryResultObserver nsINavHistoryResultTreeViewer nsINavHistoryService
  syn keyword moz_component  nsINavHistoryVisitResultNode nsINavigatorBattery nsINavigatorUserMedia
  syn keyword moz_component  nsIndexedToHTML nsINestedURI nsINetAddr nsINetUtil nsINetworkInterface
  syn keyword moz_component  nsINetworkLinkService nsINetworkManager nsINetworkStatsCallback
  syn keyword moz_component  nsINIParserFactory nsInitialStyleRule nsInlineEventHandlersTearoff
  syn keyword moz_component  nsInlineEventHandlersTearoff nsInlineFrame nsINode nsINodeInfo nsINodeList
  syn keyword moz_component  nsInProcessTabChildGlobal nsInputEvent nsInputStreamChannel nsInputStreamPump
  syn keyword moz_component  nsInsertTagCommand nsINSSCertCache nsINSSComponent nsINSSErrorsService
  syn keyword moz_component  nsINSSVersion nsInstantiationNode nsInt2StrHashtable nsInterfaceHashtable
  syn keyword moz_component  nsInterfaceHashtableMT nsInternetCiter nsIntervalSet nsIntRegion nsIntSize
  syn keyword moz_component  nsInvalidateRequestList nsInvalidPluginTag nsIObjectFrame nsIObjectInputStream
  syn keyword moz_component  nsIObjectLoadingContent nsIObjectOutputStream nsIObserver nsIObserverService
  syn keyword moz_component  nsIOCSPResponder nsIOfflineCacheUpdate nsIOfflineCacheUpdateObserver
  syn keyword moz_component  nsIOfflineCacheUpdateService nsIOpenWindowEventDetail nsIOS2Locale nsIOService
  syn keyword moz_component  nsIOSFileConstantsService nsIOSurface nsIOUtil nsIOutputIterator nsIOutputStream
  syn keyword moz_component  nsIOutputStreamCallback nsIPageSequenceFrame nsIParanoidFragmentContentSink
  syn keyword moz_component  nsIParentalControlsService nsIParentChannel nsIParentRedirectingChannel
  syn keyword moz_component  nsIParser nsIParserNode nsIParserService nsIParserUtils
  syn keyword moz_component  nsIPartialFileInputStream nsIPaymentFlowInfo nsIPaymentUIGlue
  syn keyword moz_component  nsIPaymentUIGlueCallback nsIPercentHeightObserver nsIPermission
  syn keyword moz_component  nsIPermissionChecker nsIPermissionManager nsIPersistentProperties nsIPhonetic
  syn keyword moz_component  nsIPipe nsIPK11Token nsIPK11TokenDB nsIPKCS11 nsIPKCS11Module nsIPKCS11ModuleDB
  syn keyword moz_component  nsIPKCS11Slot nsIPKIParamBlock nsIPlacesImportExportService nsIPlaintextEditor
  syn keyword moz_component  nsIPlatformCharset nsIPluginDocument nsIPluginHost nsIPluginInputStream
  syn keyword moz_component  nsIPluginInstanceOwner nsIPluginTag nsIPluginTagInfo nsIPopupBoxObject
  syn keyword moz_component  nsIPopupWindowManager nsIPowerManagerService nsIPrefBranch nsIPrefBranch2
  syn keyword moz_component  nsIPrefBranchInternal nsIPrefetchService nsIPrefLocalizedString nsIPrefService
  syn keyword moz_component  nsIPresContext nsIPresShell nsIPresShell_base nsIPrincipal nsIPrintCallback
  syn keyword moz_component  nsIPrintDialogService nsIPrinterEnumerator nsIPrintingPrompt
  syn keyword moz_component  nsIPrintingPromptService nsIPrintOptions nsIPrintPreviewNavigation
  syn keyword moz_component  nsIPrintProgress nsIPrintProgressParams nsIPrintSession nsIPrintSettings
  syn keyword moz_component  nsIPrintSettingsService nsIPrintSettingsWin nsIPrintStatusFeedback
  syn keyword moz_component  nsIPrivacyTransitionObserver nsIPrivateBrowsingChannel nsIPrivateBrowsingService
  syn keyword moz_component  nsIPrivateTextEvent nsIPrivateTextRange nsIPrivateTextRangeList nsIProcess
  syn keyword moz_component  nsIProfile nsIProfileChangeStatus nsIProfileLock nsIProfileMigrator nsIProfiler
  syn keyword moz_component  nsIProfileStartup nsIProfileUnlocker nsIProgrammingLanguage nsIProgressEventSink
  syn keyword moz_component  nsIPrompt nsIPromptFactory nsIPromptService nsIPromptService2 nsIProperties
  syn keyword moz_component  nsIProperty nsIPropertyBag nsIPropertyBag2 nsIPropertyElement
  syn keyword moz_component  nsIProtectedAuthThread nsIProtocolHandler nsIProtocolProxyCallback
  syn keyword moz_component  nsIProtocolProxyFilter nsIProtocolProxyService nsIProtocolProxyService2
  syn keyword moz_component  nsIProxiedChannel nsIProxiedProtocolHandler nsIProxyInfo nsIPSMComponent
  syn keyword moz_component  nsIQueryContentEventResult nsIRadioGroupContainer nsIRadioGroupVisitor
  syn keyword moz_component  nsIRadioInterfaceLayer nsIRadioVisitor nsIRandomAccessIterator
  syn keyword moz_component  nsIRandomGenerator nsIRDFBlob nsIRDFCompositeDataSource nsIRDFContainer
  syn keyword moz_component  nsIRDFContainerUtils nsIRDFContentSink nsIRDFDataSource nsIRDFDate
  syn keyword moz_component  nsIRDFDelegateFactory nsIRDFFTPDataSource nsIRDFFTPDataSourceCallback
  syn keyword moz_component  nsIRDFInferDataSource nsIRDFInMemoryDataSource nsIRDFInt nsIRDFLiteral
  syn keyword moz_component  nsIRDFNode nsIRDFObserver nsIRDFPropagatableDataSource nsIRDFPurgeableDataSource
  syn keyword moz_component  nsIRDFRemoteDataSource nsIRDFResource nsIRDFService nsIRDFXMLParser
  syn keyword moz_component  nsIRDFXMLSerializer nsIRDFXMLSink nsIRDFXMLSinkObserver nsIRDFXMLSource
  syn keyword moz_component  nsIReadConfig nsIRecentBadCertsService nsIRecoveryService
  syn keyword moz_component  nsIRedirectChannelRegistrar nsIRedirectResultListener nsIReflowCallback
  syn keyword moz_component  nsIRefreshURI nsIRelativeFilePref nsIRemoteService nsIRequest nsIRequestObserver
  syn keyword moz_component  nsIRequestObserverProxy nsIResProtocolHandler nsIResumableChannel
  syn keyword moz_component  nsIRILContactCallback nsIRILContentHelper nsIRilContext nsIRILDataCallback
  syn keyword moz_component  nsIRILDataCallInfo nsIRILTelephonyCallback nsIRILVoicemailCallback
  syn keyword moz_component  nsIRollupListener nsIRootBox nsIRunnable nsIRwsService nsISafeOutputStream
  syn keyword moz_component  nsISample nsISaveAsCharset nsISAXAttributes nsISAXContentHandler
  syn keyword moz_component  nsISAXDTDHandler nsISAXEntityResolver nsISAXErrorHandler nsISAXLexicalHandler
  syn keyword moz_component  nsISAXLocator nsISAXMutableAttributes nsISAXXMLFilter nsISAXXMLReader nsIScreen
  syn keyword moz_component  nsIScreenManager nsIScriptableBase64Encoder nsIScriptableDateFormat
  syn keyword moz_component  nsIScriptableInputStream nsIScriptableRegion nsIScriptableUnescapeHTML
  syn keyword moz_component  nsIScriptableUnicodeConverter nsIScriptChannel nsIScriptContext
  syn keyword moz_component  nsIScriptContextPrincipal nsIScriptElement nsIScriptError
  syn keyword moz_component  nsIScriptExternalNameSet nsIScriptGlobalObject nsIScriptGlobalObjectOwner
  syn keyword moz_component  nsIScriptLoaderObserver nsIScriptObjectPrincipal nsIScriptRuntime
  syn keyword moz_component  nsIScriptSecurityManager nsIScriptTimeoutHandler nsIScrollable
  syn keyword moz_component  nsIScrollableFrame nsIScrollableView nsIScrollbarMediator nsIScrollBoxObject
  syn keyword moz_component  nsIScrollFrameInternal nsIScrollPositionListener nsISearchableInputStream
  syn keyword moz_component  nsISearchEngine nsISearchSubmission nsISecretDecoderRing
  syn keyword moz_component  nsISecretDecoderRingConfig nsISecureBrowserUI nsISecurityCheckedComponent
  syn keyword moz_component  nsISecurityEventSink nsISecurityInfoProvider nsISecurityUITelemetry
  syn keyword moz_component  nsISecurityWarningDialogs nsISeekableStream nsISelectControlFrame nsISelection
  syn keyword moz_component  nsISelectionController nsISelectionDisplay nsISelectionListener
  syn keyword moz_component  nsISelectionPrivate nsISemanticUnitScanner nsISerializable
  syn keyword moz_component  nsISerializationHelper nsIServerSocket nsIServerSocketListener nsIServiceManager
  syn keyword moz_component  nsISessionStartup nsISessionStore nsISettingsService nsISettingsServiceCallback
  syn keyword moz_component  nsISettingsServiceLock nsISharingHandlerApp nsISHContainer nsIShellService
  syn keyword moz_component  nsISHEntry nsISHEntryInternal nsISHistory nsISHistoryInternal
  syn keyword moz_component  nsISHistoryListener nsISHTransaction nsISidebar nsISidebarExternal
  syn keyword moz_component  nsISignatureVerifier nsISimpleEnumerator nsISimpleStreamListener nsISimpleTest
  syn keyword moz_component  nsISimpleUnicharStreamFactory nsISizeOf nsISliderListener
  syn keyword moz_component  nsISMILAnimationElement nsISMILAttr nsISMILType nsISMimeCert
  syn keyword moz_component  nsISMimeVerificationListener nsISmsDatabaseService nsISmsRequestManager
  syn keyword moz_component  nsISmsService nsISO2022CNToUnicode nsISO2022JPToUnicodeV2 nsISO2022KRToUnicode
  syn keyword moz_component  nsISocketProvider nsISocketProviderService nsISocketTransport
  syn keyword moz_component  nsISocketTransportService nsISOCKSSocketInfo nsISound nsISpeculativeConnect
  syn keyword moz_component  nsISpellChecker nsISSLCertErrorDialog nsISSLErrorListener nsISSLSocketControl
  syn keyword moz_component  nsISSLStatus nsISSLStatusProvider nsIStackFrame nsIStandaloneNativeMenu
  syn keyword moz_component  nsIStandardFileStream nsIStandardURL nsIStartupCache nsIStatefulFrame
  syn keyword moz_component  nsIStorageStream nsIStreamBufferAccess nsIStreamCipher nsIStreamConverter
  syn keyword moz_component  nsIStreamConverterService nsIStreamListener nsIStreamListenerTee nsIStreamLoader
  syn keyword moz_component  nsIStreamLoaderObserver nsIStreamTransportService
  syn keyword moz_component  nsIStrictTransportSecurityService nsIStringBundle nsIStringBundleOverride
  syn keyword moz_component  nsIStringBundleService nsIStringCharsetDetector nsIStringEnumerator
  syn keyword moz_component  nsIStringInputStream nsIStructuredCloneContainer nsIStyleRule
  syn keyword moz_component  nsIStyleRuleProcessor nsIStyleSheet nsIStyleSheetLinkingElement
  syn keyword moz_component  nsIStyleSheetService nsISupports nsISupportsArray nsISupportsChar
  syn keyword moz_component  nsISupportsCString nsISupportsDouble nsISupportsFloat nsISupportsHashKey
  syn keyword moz_component  nsISupportsID nsISupportsInterfacePointer nsISupportsKey nsISupportsPRBool
  syn keyword moz_component  nsISupportsPrimitive nsISupportsPRInt16 nsISupportsPRInt32 nsISupportsPRInt64
  syn keyword moz_component  nsISupportsPriority nsISupportsPRTime nsISupportsPRUint16 nsISupportsPRUint32
  syn keyword moz_component  nsISupportsPRUint64 nsISupportsPRUint8 nsISupportsString nsISupportsVoid
  syn keyword moz_component  nsISupportsWeakReference nsISVGChildFrame nsISVGFilterProperty
  syn keyword moz_component  nsISVGGlyphFragmentNode nsISVGSVGFrame nsISyncJPAKE nsISyncMessageSender
  syn keyword moz_component  nsISyncStreamListener nsISystemMessagesInternal nsISystemMessagesWrapper
  syn keyword moz_component  nsISystemProxySettings nsITabChild nsITableCellLayout nsITableEditor
  syn keyword moz_component  nsITableLayout nsITableLayoutStrategy nsITabParent nsITaggingService
  syn keyword moz_component  nsITagHandler nsITaskbarOverlayIconController nsITaskbarPreview
  syn keyword moz_component  nsITaskbarPreviewButton nsITaskbarPreviewController nsITaskbarProgress
  syn keyword moz_component  nsITaskbarTabPreview nsITaskbarWindowPreview nsITCPSocketChild nsITCPSocketEvent
  syn keyword moz_component  nsITCPSocketIntermediary nsITCPSocketInternal nsITCPSocketParent nsITelemetry
  syn keyword moz_component  nsITemplateRDFQuery nsITextControlElement nsITextControlFrame nsITextScroll
  syn keyword moz_component  nsITextService nsITextServicesDocument nsITextServicesFilter nsITextToSubURI
  syn keyword moz_component  nsITheme nsIThread nsIThreadEventFilter nsIThreadInternal
  syn keyword moz_component  nsIThreadJSContextStack nsIThreadManager nsIThreadObserver nsIThreadPool
  syn keyword moz_component  nsIThreadPoolListener nsITimedChannel nsITimer nsITimerCallback nsITimeService
  syn keyword moz_component  nsITimezoneChangedCb nsITokenDialogs nsITokenizer nsITokenPasswordDialogs
  syn keyword moz_component  nsIToolkitChromeRegistry nsIToolkitProfile nsIToolkitProfileService
  syn keyword moz_component  nsITooltipListener nsITooltipTextProvider nsITouchEventReceiver
  syn keyword moz_component  nsITraceableChannel nsITraceRefcnt nsITransaction nsITransactionList
  syn keyword moz_component  nsITransactionListener nsITransactionManager nsITransfer nsITransferable
  syn keyword moz_component  nsITransformObserver nsITransport nsITransportEventSink nsITransportSecurityInfo
  syn keyword moz_component  nsITreeBoxObject nsITreeColumn nsITreeColumns nsITreeContentView
  syn keyword moz_component  nsITreeSelection nsITreeView nsITXTToHTMLConv nsITypeAheadFind nsIUGenCategory
  syn keyword moz_component  nsIUnicharBuffer nsIUnicharEncoder nsIUnicharInputStream
  syn keyword moz_component  nsIUnicharLineInputStream nsIUnicharOutputStream nsIUnicharStreamLoader
  syn keyword moz_component  nsIUnicharStreamLoaderObserver nsIUnicodeDecoder nsIUnicodeEncoder
  syn keyword moz_component  nsIUnicodeNormalizer nsIUpdate nsIUpdateChecker nsIUpdateCheckListener
  syn keyword moz_component  nsIUpdateManager nsIUpdatePatch nsIUpdateProcessor nsIUpdatePrompt
  syn keyword moz_component  nsIUpdateTimerManager nsIUploadChannel nsIUploadChannel2 nsIURI nsIURIChecker
  syn keyword moz_component  nsIURIClassifier nsIURIClassifierCallback nsIURIContentListener nsIURIFixup
  syn keyword moz_component  nsIURILoader nsIURIRefObject nsIURIWithPrincipal nsIURL nsIUrlClassifierCallback
  syn keyword moz_component  nsIUrlClassifierDBService nsIUrlClassifierDBServiceWorker
  syn keyword moz_component  nsIUrlClassifierHashCompleter nsIUrlClassifierHashCompleterCallback
  syn keyword moz_component  nsIUrlClassifierLookupCallback nsIUrlClassifierPrefixSet
  syn keyword moz_component  nsIUrlClassifierStreamUpdater nsIUrlClassifierTable
  syn keyword moz_component  nsIUrlClassifierUpdateObserver nsIUrlClassifierUtils nsIURLFormatter
  syn keyword moz_component  nsIUrlListManager nsIUrlListManagerCallback nsIURLParser nsIUserCertPicker
  syn keyword moz_component  nsIUserInfo nsIUTF8ConverterService nsIUTF8StringEnumerator nsIUUIDGenerator
  syn keyword moz_component  nsIVariant nsIVersionComparator nsIView nsIViewManager nsIViewSourceChannel
  syn keyword moz_component  nsIVolume nsIVolumeService nsIVolumeStat nsIWapPushApplication nsIWeakReference
  syn keyword moz_component  nsIWebBrowser nsIWebBrowserChrome nsIWebBrowserChrome2 nsIWebBrowserChrome3
  syn keyword moz_component  nsIWebBrowserChromeFocus nsIWebBrowserFind nsIWebBrowserFindInFrames
  syn keyword moz_component  nsIWebBrowserFocus nsIWebBrowserPersist nsIWebBrowserPrint nsIWebBrowserSetup
  syn keyword moz_component  nsIWebBrowserStream nsIWebContentConverterService nsIWebContentHandlerInfo
  syn keyword moz_component  nsIWebContentHandlerRegistrar nsIWebGLActiveInfo nsIWebGLExtension
  syn keyword moz_component  nsIWebGLExtensionCompressedTextureATC nsIWebGLExtensionCompressedTexturePVRTC
  syn keyword moz_component  nsIWebGLExtensionCompressedTextureS3TC nsIWebGLExtensionDepthTexture
  syn keyword moz_component  nsIWebGLExtensionLoseContext nsIWebGLExtensionStandardDerivatives
  syn keyword moz_component  nsIWebGLExtensionTextureFilterAnisotropic nsIWebHandlerApp nsIWebNavigation
  syn keyword moz_component  nsIWebNavigationInfo nsIWebPageDescriptor nsIWebProgress nsIWebProgressListener
  syn keyword moz_component  nsIWebProgressListener2 nsIWebShellServices nsIWebSocketChannel
  syn keyword moz_component  nsIWebSocketListener nsIWidget nsIWidgetListener nsIWifi nsIWifiAccessPoint
  syn keyword moz_component  nsIWifiListener nsIWifiMonitor nsIWifiScanResult nsIWifiScanResultsReady
  syn keyword moz_component  nsIWifiTetheringCallback nsIWinAccessNode nsIWinAppHelper nsIWindowCreator
  syn keyword moz_component  nsIWindowCreator2 nsIWindowDataSource nsIWindowMediator
  syn keyword moz_component  nsIWindowMediatorListener nsIWindowProvider nsIWindowsRegKey
  syn keyword moz_component  nsIWindowsShellService nsIWindowWatcher nsIWinTaskbar nsIWordBreaker
  syn keyword moz_component  nsIWorkerHolder nsIWorkerTest nsIWorkerTestCallback nsIWritablePropertyBag
  syn keyword moz_component  nsIWritablePropertyBag2 nsIWritableVariant nsIWyciwygChannel nsIX509Cert
  syn keyword moz_component  nsIX509Cert2 nsIX509Cert3 nsIX509CertDB nsIX509CertDB2 nsIX509CertList
  syn keyword moz_component  nsIX509CertValidity nsIXBLAccessible nsIXHRSendable nsIXMLContentBuilder
  syn keyword moz_component  nsIXMLContentSink nsIXMLHttpRequest nsIXMLHttpRequestEventTarget
  syn keyword moz_component  nsIXMLHttpRequestUpload nsIXPathEvaluatorInternal nsIXPathResult
  syn keyword moz_component  nsIXPCComponents nsIXPCComponents_Classes nsIXPCComponents_ClassesByID
  syn keyword moz_component  nsIXPCComponents_Constructor nsIXPCComponents_Exception nsIXPCComponents_ID
  syn keyword moz_component  nsIXPCComponents_Interfaces nsIXPCComponents_InterfacesByID
  syn keyword moz_component  nsIXPCComponents_Results nsIXPCComponents_Utils nsIXPCComponents_utils_Sandbox
  syn keyword moz_component  nsIXPCConstructor nsIXPCException nsIXPCFunctionThisTranslator nsIXPConnect
  syn keyword moz_component  nsIXPConnectJSObjectHolder nsIXPConnectWrappedJS nsIXPConnectWrappedNative
  syn keyword moz_component  nsIXPCScriptable nsIXPCScriptNotify nsIXPCSecurityManager nsIXPCTestInterfaceA
  syn keyword moz_component  nsIXPCTestInterfaceB nsIXPCTestObjectReadOnly nsIXPCTestObjectReadWrite
  syn keyword moz_component  nsIXPCTestParams nsIXPCWrappedJSClass nsIXPCWrappedJSObjectGetter nsIXPTCProxy
  syn keyword moz_component  nsIXPTCStubBase nsIXSLTException nsIXSLTProcessor nsIXSLTProcessorPrivate
  syn keyword moz_component  nsIXTFAttributeHandler nsIXTFElement nsIXTFElementFactory nsIXTFElementWrapper
  syn keyword moz_component  nsIXTFPrivate nsIXTFService nsIXULAppInfo nsIXULAppInstall nsIXULBrowserWindow
  syn keyword moz_component  nsIXULBuilderListener nsIXULChromeRegistry nsIXULContextMenuBuilder
  syn keyword moz_component  nsIXULDocument nsIXULOverlayProvider nsIXULPrototypeScript nsIXULRuntime
  syn keyword moz_component  nsIXULSortService nsIXULTemplateBuilder nsIXULTemplateQueryProcessor
  syn keyword moz_component  nsIXULTemplateResult nsIXULTemplateRuleFilter nsIXULTreeBuilder
  syn keyword moz_component  nsIXULTreeBuilderObserver nsIXULWindow nsIZipEntry nsIZipReader
  syn keyword moz_component  nsIZipReaderCache nsIZipWriter

"|
"| Gecko Components: External DOM API
"|------------------------------------------------------------------------------
"| find src/mozilla -regex ".*\.\(idl\|h\)" -exec grep "^\(class\|interface\)\s*nsI" '{}' \;
"|   | sed 's/\(:\|;\|,\|{\).*$//' | sed 's/^.*nsI/nsI/' | sed 's/\s*$//'                 \
"|   | sort -u | grep nsIDOM
"|

  syn keyword moz_dom  nsIDOMAnimationEvent nsIDOMArchiveReader nsIDOMArchiveRequest nsIDOMAttr
  syn keyword moz_dom  nsIDOMBarProp nsIDOMBatteryManager nsIDOMBeforeUnloadEvent nsIDOMBlob
  syn keyword moz_dom  nsIDOMBluetoothAdapter nsIDOMBluetoothDevice nsIDOMBluetoothDeviceAddressEvent
  syn keyword moz_dom  nsIDOMBluetoothDeviceEvent nsIDOMBluetoothManager nsIDOMBluetoothPropertyEvent
  syn keyword moz_dom  nsIDOMCallEvent nsIDOMCameraManager nsIDOMCanvasGradient nsIDOMCanvasPattern
  syn keyword moz_dom  nsIDOMCanvasRenderingContext2D nsIDOMCaretPosition nsIDOMCDATASection
  syn keyword moz_dom  nsIDOMCharacterData nsIDOMChromeWindow nsIDOMCIExtension nsIDOMClientInformation
  syn keyword moz_dom  nsIDOMClientRect nsIDOMClientRectList nsIDOMCloseEvent nsIDOMCommandEvent
  syn keyword moz_dom  nsIDOMComment nsIDOMCompositionEvent nsIDOMContact nsIDOMContactAddress
  syn keyword moz_dom  nsIDOMContactField nsIDOMContactFindOptions nsIDOMContactManager
  syn keyword moz_dom  nsIDOMContactProperties nsIDOMContactTelField nsIDOMCounter nsIDOMCRMFObject
  syn keyword moz_dom  nsIDOMCrypto nsIDOMCryptoDialogs nsIDOMCSS2Properties nsIDOMCSSCharsetRule
  syn keyword moz_dom  nsIDOMCSSFontFaceRule nsIDOMCSSImportRule nsIDOMCSSMediaRule
  syn keyword moz_dom  nsIDOMCSSMozDocumentRule nsIDOMCSSPageRule nsIDOMCSSPrimitiveValue nsIDOMCSSRule
  syn keyword moz_dom  nsIDOMCSSRuleList nsIDOMCSSStyleDeclaration nsIDOMCSSStyleRule
  syn keyword moz_dom  nsIDOMCSSStyleRuleCollection nsIDOMCSSStyleSheet nsIDOMCSSSupportsRule
  syn keyword moz_dom  nsIDOMCSSUnknownRule nsIDOMCSSValue nsIDOMCSSValueList nsIDOMCustomEvent
  syn keyword moz_dom  nsIDOMDataChannel nsIDOMDataContainerEvent nsIDOMDataErrorEvent
  syn keyword moz_dom  nsIDOMDataTransfer nsIDOMDesktopNotification nsIDOMDesktopNotificationCenter
  syn keyword moz_dom  nsIDOMDeviceAcceleration nsIDOMDeviceLightEvent nsIDOMDeviceMotionEvent
  syn keyword moz_dom  nsIDOMDeviceOrientationEvent nsIDOMDeviceProximityEvent nsIDOMDeviceRotationRate
  syn keyword moz_dom  nsIDOMDeviceStorage nsIDOMDeviceStorageChangeEvent nsIDOMDeviceStorageCursor
  syn keyword moz_dom  nsIDOMDeviceStorageStat nsIDOMDocument nsIDOMDocumentFragment
  syn keyword moz_dom  nsIDOMDocumentTouch nsIDOMDocumentType nsIDOMDocumentXBL nsIDOMDOMConstructor
  syn keyword moz_dom  nsIDOMDOMError nsIDOMDOMException nsIDOMDOMImplementation nsIDOMDOMLocator
  syn keyword moz_dom  nsIDOMDOMRequest nsIDOMDOMSettableTokenList nsIDOMDOMStringList
  syn keyword moz_dom  nsIDOMDOMStringMap nsIDOMDOMTokenList nsIDOMDragEvent nsIDOMElement
  syn keyword moz_dom  nsIDOMElementCSSInlineStyle nsIDOMElementTimeControl nsIDOMEvent
  syn keyword moz_dom  nsIDOMEventListener nsIDOMEventTarget nsIDOMFile nsIDOMFileError
  syn keyword moz_dom  nsIDOMFileHandle nsIDOMFileList nsIDOMFileReader nsIDOMFileRequest nsIDOMFMRadio
  syn keyword moz_dom  nsIDOMFontFace nsIDOMFontFaceList nsIDOMFormData nsIDOMGeoGeolocation
  syn keyword moz_dom  nsIDOMGeoPosition nsIDOMGeoPositionCallback nsIDOMGeoPositionCoords
  syn keyword moz_dom  nsIDOMGeoPositionError nsIDOMGeoPositionErrorCallback nsIDOMGeoPositionOptions
  syn keyword moz_dom  nsIDOMGetSVGDocument nsIDOMGetUserMediaErrorCallback
  syn keyword moz_dom  nsIDOMGetUserMediaSuccessCallback nsIDOMGlobalObjectConstructor
  syn keyword moz_dom  nsIDOMGlobalPropertyInitializer nsIDOMHashChangeEvent nsIDOMHistory
  syn keyword moz_dom  nsIDOMHTMLAnchorElement nsIDOMHTMLAppletElement nsIDOMHTMLAreaElement
  syn keyword moz_dom  nsIDOMHTMLAudioElement nsIDOMHTMLBaseElement nsIDOMHTMLBodyElement
  syn keyword moz_dom  nsIDOMHTMLBRElement nsIDOMHTMLButtonElement nsIDOMHTMLByteRanges
  syn keyword moz_dom  nsIDOMHTMLCanvasElement nsIDOMHTMLCollection nsIDOMHTMLCommandElement
  syn keyword moz_dom  nsIDOMHTMLDataListElement nsIDOMHTMLDirectoryElement nsIDOMHTMLDivElement
  syn keyword moz_dom  nsIDOMHTMLDListElement nsIDOMHTMLDocument nsIDOMHTMLElement
  syn keyword moz_dom  nsIDOMHTMLEmbedElement nsIDOMHTMLFieldSetElement nsIDOMHTMLFontElement
  syn keyword moz_dom  nsIDOMHTMLFormElement nsIDOMHTMLFrameElement nsIDOMHTMLFrameSetElement
  syn keyword moz_dom  nsIDOMHTMLHeadElement nsIDOMHTMLHeadingElement nsIDOMHTMLHRElement
  syn keyword moz_dom  nsIDOMHTMLHtmlElement nsIDOMHTMLIFrameElement nsIDOMHTMLImageElement
  syn keyword moz_dom  nsIDOMHTMLInputElement nsIDOMHTMLLabelElement nsIDOMHTMLLegendElement
  syn keyword moz_dom  nsIDOMHTMLLIElement nsIDOMHTMLLinkElement nsIDOMHTMLMapElement
  syn keyword moz_dom  nsIDOMHTMLMediaElement nsIDOMHTMLMenuElement nsIDOMHTMLMenuItemElement
  syn keyword moz_dom  nsIDOMHTMLMetaElement nsIDOMHTMLMeterElement nsIDOMHTMLModElement
  syn keyword moz_dom  nsIDOMHTMLObjectElement nsIDOMHTMLOListElement nsIDOMHTMLOptGroupElement
  syn keyword moz_dom  nsIDOMHTMLOptionElement nsIDOMHTMLOptionsCollection nsIDOMHTMLOutputElement
  syn keyword moz_dom  nsIDOMHTMLParagraphElement nsIDOMHTMLParamElement nsIDOMHTMLPreElement
  syn keyword moz_dom  nsIDOMHTMLProgressElement nsIDOMHTMLPropertiesCollection nsIDOMHTMLQuoteElement
  syn keyword moz_dom  nsIDOMHTMLScriptElement nsIDOMHTMLSelectElement nsIDOMHTMLSourceElement
  syn keyword moz_dom  nsIDOMHTMLStyleElement nsIDOMHTMLTableCaptionElement nsIDOMHTMLTableCellElement
  syn keyword moz_dom  nsIDOMHTMLTableColElement nsIDOMHTMLTableElement nsIDOMHTMLTableRowElement
  syn keyword moz_dom  nsIDOMHTMLTableSectionElement nsIDOMHTMLTextAreaElement nsIDOMHTMLTitleElement
  syn keyword moz_dom  nsIDOMHTMLUListElement nsIDOMHTMLUnknownElement nsIDOMHTMLVideoElement
  syn keyword moz_dom  nsIDOMICCCardLockErrorEvent nsIDOMImageData nsIDOMJSWindow nsIDOMKeyEvent
  syn keyword moz_dom  nsIDOMLinkStyle nsIDOMLoadStatus nsIDOMLocation nsIDOMLockedFile nsIDOMLSInput
  syn keyword moz_dom  nsIDOMLSProgressEvent nsIDOMMediaError nsIDOMMediaList nsIDOMMediaQueryList
  syn keyword moz_dom  nsIDOMMediaQueryListListener nsIDOMMediaStream nsIDOMMessageEvent nsIDOMMimeType
  syn keyword moz_dom  nsIDOMMimeTypeArray nsIDOMModalContentWindow nsIDOMMouseEvent
  syn keyword moz_dom  nsIDOMMouseEventListener nsIDOMMouseScrollEvent nsIDOMMozActivity
  syn keyword moz_dom  nsIDOMMozActivityHandlerDescription nsIDOMMozActivityOptions
  syn keyword moz_dom  nsIDOMMozActivityRequestHandler nsIDOMMozAlarmsManager nsIDOMMozApplicationEvent
  syn keyword moz_dom  nsIDOMMozBrowserFrame nsIDOMMozCanvasPrintState nsIDOMMozConnection
  syn keyword moz_dom  nsIDOMMozContactChangeEvent nsIDOMMozCSSKeyframeRule nsIDOMMozCSSKeyframesRule
  syn keyword moz_dom  nsIDOMMozIccManager nsIDOMMozMobileCellInfo nsIDOMMozMobileConnection
  syn keyword moz_dom  nsIDOMMozMobileConnectionInfo nsIDOMMozMobileICCInfo nsIDOMMozMobileNetworkInfo
  syn keyword moz_dom  nsIDOMMozNavigatorActivities nsIDOMMozNavigatorNetwork nsIDOMMozNavigatorSms
  syn keyword moz_dom  nsIDOMMozNavigatorTime nsIDOMMozNetworkStats nsIDOMMozNetworkStatsData
  syn keyword moz_dom  nsIDOMMozNetworkStatsManager nsIDOMMozPowerManager nsIDOMMozSettingsEvent
  syn keyword moz_dom  nsIDOMMozSmsCursor nsIDOMMozSmsEvent nsIDOMMozSmsFilter nsIDOMMozSmsManager
  syn keyword moz_dom  nsIDOMMozSmsMessage nsIDOMMozSmsRequest nsIDOMMozStkCommandEvent
  syn keyword moz_dom  nsIDOMMozTimeManager nsIDOMMozURLProperty nsIDOMMozVoicemail
  syn keyword moz_dom  nsIDOMMozVoicemailEvent nsIDOMMozVoicemailStatus nsIDOMMozWakeLock
  syn keyword moz_dom  nsIDOMMozWakeLockListener nsIDOMMozWifiConnectionInfoEvent
  syn keyword moz_dom  nsIDOMMozWifiStatusChangeEvent nsIDOMMutationEvent nsIDOMMutationObserver
  syn keyword moz_dom  nsIDOMMutationRecord nsIDOMNamedNodeMap nsIDOMNavigator nsIDOMNavigatorBluetooth
  syn keyword moz_dom  nsIDOMNavigatorCamera nsIDOMNavigatorDesktopNotification
  syn keyword moz_dom  nsIDOMNavigatorDeviceStorage nsIDOMNavigatorGeolocation nsIDOMNavigatorPayment
  syn keyword moz_dom  nsIDOMNavigatorSystemMessages nsIDOMNavigatorTelephony nsIDOMNavigatorUserMedia
  syn keyword moz_dom  nsIDOMNode nsIDOMNodeFilter nsIDOMNodeIterator nsIDOMNodeList nsIDOMNodeSelector
  syn keyword moz_dom  nsIDOMNotifyAudioAvailableEvent nsIDOMNotifyPaintEvent nsIDOMNSEditableElement
  syn keyword moz_dom  nsIDOMNSEvent nsIDOMNSRGBAColor nsIDOMNSXPathExpression
  syn keyword moz_dom  nsIDOMOfflineResourceList nsIDOMPageTransitionEvent nsIDOMPaintRequest
  syn keyword moz_dom  nsIDOMPaintRequestList nsIDOMParser nsIDOMParserJS nsIDOMPaymentProductPrice
  syn keyword moz_dom  nsIDOMPaymentRequestInfo nsIDOMPaymentRequestPaymentInfo
  syn keyword moz_dom  nsIDOMPaymentRequestRefundInfo nsIDOMPermissionSettings nsIDOMPkcs11
  syn keyword moz_dom  nsIDOMPlugin nsIDOMPluginArray nsIDOMPopStateEvent nsIDOMPopupBlockedEvent
  syn keyword moz_dom  nsIDOMProcessingInstruction nsIDOMProgressEvent nsIDOMPropertyNodeList
  syn keyword moz_dom  nsIDOMRange nsIDOMRect nsIDOMRequestService nsIDOMRGBColor nsIDOMRTCIceCandidate
  syn keyword moz_dom  nsIDOMRTCPeerConnection nsIDOMRTCSessionDescription nsIDOMScreen
  syn keyword moz_dom  nsIDOMScriptObjectFactory nsIDOMScrollAreaEvent nsIDOMSerializer
  syn keyword moz_dom  nsIDOMSettingsLock nsIDOMSettingsManager nsIDOMSimpleGestureEvent
  syn keyword moz_dom  nsIDOMSmartCardEvent nsIDOMStorage nsIDOMStorageEvent nsIDOMStorageIndexedDB
  syn keyword moz_dom  nsIDOMStorageItem nsIDOMStorageManager nsIDOMStorageObsolete nsIDOMStyleSheet
  syn keyword moz_dom  nsIDOMStyleSheetList nsIDOMSVGAElement nsIDOMSVGAltGlyphElement nsIDOMSVGAngle
  syn keyword moz_dom  nsIDOMSVGAnimatedAngle nsIDOMSVGAnimatedBoolean nsIDOMSVGAnimatedEnumeration
  syn keyword moz_dom  nsIDOMSVGAnimatedInteger nsIDOMSVGAnimatedLength nsIDOMSVGAnimatedLengthList
  syn keyword moz_dom  nsIDOMSVGAnimatedNumber nsIDOMSVGAnimatedNumberList nsIDOMSVGAnimatedPathData
  syn keyword moz_dom  nsIDOMSVGAnimatedPoints nsIDOMSVGAnimatedPreserveAspectRatio
  syn keyword moz_dom  nsIDOMSVGAnimatedRect nsIDOMSVGAnimatedString nsIDOMSVGAnimatedTransformList
  syn keyword moz_dom  nsIDOMSVGAnimateElement nsIDOMSVGAnimateMotionElement
  syn keyword moz_dom  nsIDOMSVGAnimateTransformElement nsIDOMSVGAnimationElement
  syn keyword moz_dom  nsIDOMSVGCircleElement nsIDOMSVGClipPathElement
  syn keyword moz_dom  nsIDOMSVGComponentTransferFunctionElement nsIDOMSVGDefsElement
  syn keyword moz_dom  nsIDOMSVGDescElement nsIDOMSVGDocument nsIDOMSVGElement nsIDOMSVGEllipseElement
  syn keyword moz_dom  nsIDOMSVGEvent nsIDOMSVGFEBlendElement nsIDOMSVGFEColorMatrixElement
  syn keyword moz_dom  nsIDOMSVGFEComponentTransferElement nsIDOMSVGFECompositeElement
  syn keyword moz_dom  nsIDOMSVGFEConvolveMatrixElement nsIDOMSVGFEDiffuseLightingElement
  syn keyword moz_dom  nsIDOMSVGFEDisplacementMapElement nsIDOMSVGFEDistantLightElement
  syn keyword moz_dom  nsIDOMSVGFEFloodElement nsIDOMSVGFEFuncAElement nsIDOMSVGFEFuncBElement
  syn keyword moz_dom  nsIDOMSVGFEFuncGElement nsIDOMSVGFEFuncRElement nsIDOMSVGFEGaussianBlurElement
  syn keyword moz_dom  nsIDOMSVGFEImageElement nsIDOMSVGFEMergeElement nsIDOMSVGFEMergeNodeElement
  syn keyword moz_dom  nsIDOMSVGFEMorphologyElement nsIDOMSVGFEOffsetElement
  syn keyword moz_dom  nsIDOMSVGFEPointLightElement nsIDOMSVGFESpecularLightingElement
  syn keyword moz_dom  nsIDOMSVGFESpotLightElement nsIDOMSVGFETileElement nsIDOMSVGFETurbulenceElement
  syn keyword moz_dom  nsIDOMSVGFilterElement nsIDOMSVGFilterPrimitiveStandardAttributes
  syn keyword moz_dom  nsIDOMSVGFitToViewBox nsIDOMSVGForeignObjectElement nsIDOMSVGGElement
  syn keyword moz_dom  nsIDOMSVGGradientElement nsIDOMSVGImageElement nsIDOMSVGLength
  syn keyword moz_dom  nsIDOMSVGLengthList nsIDOMSVGLinearGradientElement nsIDOMSVGLineElement
  syn keyword moz_dom  nsIDOMSVGLocatable nsIDOMSVGMarkerElement nsIDOMSVGMaskElement nsIDOMSVGMatrix
  syn keyword moz_dom  nsIDOMSVGMetadataElement nsIDOMSVGMpathElement nsIDOMSVGNumber
  syn keyword moz_dom  nsIDOMSVGNumberList nsIDOMSVGPathElement nsIDOMSVGPathSeg nsIDOMSVGPathSegArcAbs
  syn keyword moz_dom  nsIDOMSVGPathSegArcRel nsIDOMSVGPathSegClosePath nsIDOMSVGPathSegCurvetoCubicAbs
  syn keyword moz_dom  nsIDOMSVGPathSegCurvetoCubicRel nsIDOMSVGPathSegCurvetoCubicSmoothAbs
  syn keyword moz_dom  nsIDOMSVGPathSegCurvetoCubicSmoothRel nsIDOMSVGPathSegCurvetoQuadraticAbs
  syn keyword moz_dom  nsIDOMSVGPathSegCurvetoQuadraticRel nsIDOMSVGPathSegCurvetoQuadraticSmoothAbs
  syn keyword moz_dom  nsIDOMSVGPathSegCurvetoQuadraticSmoothRel nsIDOMSVGPathSegLinetoAbs
  syn keyword moz_dom  nsIDOMSVGPathSegLinetoHorizontalAbs nsIDOMSVGPathSegLinetoHorizontalRel
  syn keyword moz_dom  nsIDOMSVGPathSegLinetoRel nsIDOMSVGPathSegLinetoVerticalAbs
  syn keyword moz_dom  nsIDOMSVGPathSegLinetoVerticalRel nsIDOMSVGPathSegList nsIDOMSVGPathSegMovetoAbs
  syn keyword moz_dom  nsIDOMSVGPathSegMovetoRel nsIDOMSVGPatternElement nsIDOMSVGPoint
  syn keyword moz_dom  nsIDOMSVGPointList nsIDOMSVGPolygonElement nsIDOMSVGPolylineElement
  syn keyword moz_dom  nsIDOMSVGPreserveAspectRatio nsIDOMSVGRadialGradientElement nsIDOMSVGRect
  syn keyword moz_dom  nsIDOMSVGRectElement nsIDOMSVGScriptElement nsIDOMSVGSetElement
  syn keyword moz_dom  nsIDOMSVGStopElement nsIDOMSVGStringList nsIDOMSVGStylable nsIDOMSVGStyleElement
  syn keyword moz_dom  nsIDOMSVGSVGElement nsIDOMSVGSwitchElement nsIDOMSVGSymbolElement nsIDOMSVGTests
  syn keyword moz_dom  nsIDOMSVGTextContentElement nsIDOMSVGTextElement nsIDOMSVGTextPathElement
  syn keyword moz_dom  nsIDOMSVGTextPositioningElement nsIDOMSVGTitleElement nsIDOMSVGTransform
  syn keyword moz_dom  nsIDOMSVGTransformable nsIDOMSVGTransformList nsIDOMSVGTSpanElement
  syn keyword moz_dom  nsIDOMSVGUnitTypes nsIDOMSVGURIReference nsIDOMSVGUseElement
  syn keyword moz_dom  nsIDOMSVGViewElement nsIDOMSVGViewSpec nsIDOMSVGZoomAndPan nsIDOMSVGZoomEvent
  syn keyword moz_dom  nsIDOMSystemMessageCallback nsIDOMTCPSocket nsIDOMTelephony nsIDOMTelephonyCall
  syn keyword moz_dom  nsIDOMText nsIDOMTextMetrics nsIDOMTimeEvent nsIDOMTimeRanges nsIDOMToString
  syn keyword moz_dom  nsIDOMTouch nsIDOMTouchEvent nsIDOMTouchList nsIDOMTransitionEvent
  syn keyword moz_dom  nsIDOMTreeWalker nsIDOMUIEvent nsIDOMUserDataHandler nsIDOMUserProximityEvent
  syn keyword moz_dom  nsIDOMUSSDReceivedEvent nsIDOMValidityState nsIDOMWebGLRenderingContext
  syn keyword moz_dom  nsIDOMWheelEvent nsIDOMWifiManager nsIDOMWindow nsIDOMWindowCollection
  syn keyword moz_dom  nsIDOMWindowInternal nsIDOMWindowPerformance nsIDOMWindowUtils nsIDOMXMLDocument
  syn keyword moz_dom  nsIDOMXPathEvaluator nsIDOMXPathExpression nsIDOMXPathNamespace
  syn keyword moz_dom  nsIDOMXPathNSResolver nsIDOMXPathResult nsIDOMXULButtonElement
  syn keyword moz_dom  nsIDOMXULCheckboxElement nsIDOMXULCommandDispatcher nsIDOMXULCommandEvent
  syn keyword moz_dom  nsIDOMXULContainerElement nsIDOMXULContainerItemElement nsIDOMXULControlElement
  syn keyword moz_dom  nsIDOMXULDescriptionElement nsIDOMXULDocument nsIDOMXULElement
  syn keyword moz_dom  nsIDOMXULImageElement nsIDOMXULLabeledControlElement nsIDOMXULLabelElement
  syn keyword moz_dom  nsIDOMXULMenuListElement nsIDOMXULMultiSelectControlElement
  syn keyword moz_dom  nsIDOMXULPopupElement nsIDOMXULRelatedElement nsIDOMXULSelectControlElement
  syn keyword moz_dom  nsIDOMXULSelectControlItemElement nsIDOMXULTextBoxElement nsIDOMXULTreeElement

"|
"| Gecko NS_IMPL Macros
"|------------------------------------------------------------------------------
"| find src/mozilla -regex ".*\.\(idl\|h\)" -exec grep "^#define\s*NS_IMPL" '{}' \;  \
"|   | sed 's/^#define\s*//' | sed 's/\s.*$//' | grep '(' | sed 's/(.*$//'           \
"|   | sort -u
"|

  syn keyword moz_util  NS_IMPL_ACTION_ATTR NS_IMPL_ADDREF NS_IMPL_ADDREF_INHERITED
  syn keyword moz_util  NS_IMPL_ADDREF_USING_AGGREGATOR NS_IMPL_AGGREGATED NS_IMPL_AGGREGATED_HELPER
  syn keyword moz_util  NS_IMPL_AGGREGATED_QUERY_CYCLE_COLLECTION NS_IMPL_AGGREGATED_QUERY_HEAD
  syn keyword moz_util  NS_IMPL_BOOL_ATTR NS_IMPL_CC_NATIVE_ADDREF_BODY NS_IMPL_CC_NATIVE_RELEASE_BODY
  syn keyword moz_util  NS_IMPL_CI_INTERFACE_GETTER1 NS_IMPL_CI_INTERFACE_GETTER2
  syn keyword moz_util  NS_IMPL_CI_INTERFACE_GETTER3 NS_IMPL_CI_INTERFACE_GETTER4
  syn keyword moz_util  NS_IMPL_CI_INTERFACE_GETTER5 NS_IMPL_CI_INTERFACE_GETTER6
  syn keyword moz_util  NS_IMPL_CI_INTERFACE_GETTER7 NS_IMPL_CI_INTERFACE_GETTER8
  syn keyword moz_util  NS_IMPL_CI_INTERFACE_GETTER9 NS_IMPL_CI_INTERFACE_GETTER10
  syn keyword moz_util  NS_IMPL_CI_INTERFACE_GETTER11 NS_IMPL_CLASS_GETSET NS_IMPL_CLASS_GETSET_STR
  syn keyword moz_util  NS_IMPL_CLASS_GETTER NS_IMPL_CLASS_GETTER_STR NS_IMPL_CLASSINFO
  syn keyword moz_util  NS_IMPL_CLASS_SETTER NS_IMPL_CLASS_SETTER_STR NS_IMPL_CYCLE_COLLECTING_ADDREF
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTING_AGGREGATED NS_IMPL_CYCLE_COLLECTING_NATIVE_ADDREF
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTING_NATIVE_RELEASE NS_IMPL_CYCLE_COLLECTING_RELEASE
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTING_RELEASE_WITH_DESTROY NS_IMPL_CYCLE_COLLECTION_0
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_1 NS_IMPL_CYCLE_COLLECTION_2 NS_IMPL_CYCLE_COLLECTION_3
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_4 NS_IMPL_CYCLE_COLLECTION_5 NS_IMPL_CYCLE_COLLECTION_6
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_7 NS_IMPL_CYCLE_COLLECTION_8
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_CAN_SKIP_BEGIN
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_CAN_SKIP_IN_CC_BEGIN
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_CAN_SKIP_THIS_BEGIN NS_IMPL_CYCLE_COLLECTION_CLASS
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_DESCRIBE NS_IMPL_CYCLE_COLLECTION_INHERITED_0
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_INHERITED_1 NS_IMPL_CYCLE_COLLECTION_INHERITED_2
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_INHERITED_3 NS_IMPL_CYCLE_COLLECTION_INHERITED_4
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_INHERITED_5 NS_IMPL_CYCLE_COLLECTION_INHERITED_6
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_INHERITED_7 NS_IMPL_CYCLE_COLLECTION_INHERITED_8
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_LEGACY_NATIVE_CLASS
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_NATIVE_CLASS NS_IMPL_CYCLE_COLLECTION_NATIVE_VTABLE
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_ROOT_NATIVE
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_SCRIPT_HOLDER_NATIVE_CLASS
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_SCRIPT_HOLDER_NATIVE_VTABLE
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRACE_BEGIN
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRACE_BEGIN_INHERITED
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRACE_JS_CALLBACK
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRACE_JS_MEMBER_CALLBACK
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRACE_JSVAL_MEMBER_CALLBACK
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRACE_NATIVE_BEGIN
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRACE_WRAPPERCACHE
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRAVERSE_BEGIN
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRAVERSE_BEGIN_AGGREGATED
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRAVERSE_BEGIN_INHERITED
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRAVERSE_BEGIN_INTERNAL
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRAVERSE_NATIVE_BEGIN
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRAVERSE_NATIVE_MEMBER
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRAVERSE_NATIVE_PTR
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRAVERSE_NSCOMARRAY
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRAVERSE_NSCOMPTR
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRAVERSE_NSCOMPTR_AMBIGUOUS
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRAVERSE_NSTARRAY
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRAVERSE_NSTARRAY_MEMBER
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRAVERSE_NSTARRAY_OF_NSCOMPTR
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_TRAVERSE_RAWPTR NS_IMPL_CYCLE_COLLECTION_UNLINK_0
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_UNLINK_BEGIN
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_UNLINK_BEGIN_INHERITED
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_UNLINK_BEGIN_NATIVE
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_UNLINK_NATIVE_0
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_UNLINK_NSCOMARRAY
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_UNLINK_NSCOMPTR
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_UNLINK_NSTARRAY NS_IMPL_CYCLE_COLLECTION_UNROOT_NATIVE
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_VTABLE NS_IMPL_CYCLE_COLLECTION_WRAPPERCACHE_0
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_WRAPPERCACHE_1 NS_IMPL_CYCLE_COLLECTION_WRAPPERCACHE_2
  syn keyword moz_util  NS_IMPL_CYCLE_COLLECTION_WRAPPERCACHE_3 NS_IMPL_DOMTARGET_DEFAULTS
  syn keyword moz_util  NS_IMPL_ELEMENT_CLONE NS_IMPL_ELEMENT_CLONE_WITH_INIT
  syn keyword moz_util  NS_IMPL_ENUM_ATTR_DEFAULT_VALUE NS_IMPL_EVENT_HANDLER
  syn keyword moz_util  NS_IMPL_FORWARD_EVENT_HANDLER NS_IMPL_FRAMEARENA_HELPERS NS_IMPL_GETSET
  syn keyword moz_util  NS_IMPL_GETSET_STR NS_IMPL_GETTER NS_IMPL_GETTER_STR NS_IMPL_INT_ATTR
  syn keyword moz_util  NS_IMPL_INT_ATTR_DEFAULT_VALUE NS_IMPL_ISUPPORTS0 NS_IMPL_ISUPPORTS1
  syn keyword moz_util  NS_IMPL_ISUPPORTS1_CI NS_IMPL_ISUPPORTS2 NS_IMPL_ISUPPORTS2_CI
  syn keyword moz_util  NS_IMPL_ISUPPORTS3 NS_IMPL_ISUPPORTS3_CI NS_IMPL_ISUPPORTS4
  syn keyword moz_util  NS_IMPL_ISUPPORTS4_CI NS_IMPL_ISUPPORTS5 NS_IMPL_ISUPPORTS5_CI
  syn keyword moz_util  NS_IMPL_ISUPPORTS6 NS_IMPL_ISUPPORTS6_CI NS_IMPL_ISUPPORTS7
  syn keyword moz_util  NS_IMPL_ISUPPORTS7_CI NS_IMPL_ISUPPORTS8 NS_IMPL_ISUPPORTS8_CI
  syn keyword moz_util  NS_IMPL_ISUPPORTS9 NS_IMPL_ISUPPORTS9_CI NS_IMPL_ISUPPORTS10
  syn keyword moz_util  NS_IMPL_ISUPPORTS10_CI NS_IMPL_ISUPPORTS11 NS_IMPL_ISUPPORTS11_CI
  syn keyword moz_util  NS_IMPL_ISUPPORTS_INHERITED0 NS_IMPL_ISUPPORTS_INHERITED1
  syn keyword moz_util  NS_IMPL_ISUPPORTS_INHERITED2 NS_IMPL_ISUPPORTS_INHERITED3
  syn keyword moz_util  NS_IMPL_ISUPPORTS_INHERITED4 NS_IMPL_ISUPPORTS_INHERITED5
  syn keyword moz_util  NS_IMPL_ISUPPORTS_INHERITED6 NS_IMPL_ISUPPORTS_INHERITED7
  syn keyword moz_util  NS_IMPL_ISUPPORTS_INHERITED8 NS_IMPL_ISUPPORTS_INHERITED9
  syn keyword moz_util  NS_IMPL_ISUPPORTS_INHERITED10 NS_IMPL_MOZILLA192_NSGETMODULE
  syn keyword moz_util  NS_IMPL_NONLOGGING_ADDREF_INHERITED NS_IMPL_NONLOGGING_RELEASE_INHERITED
  syn keyword moz_util  NS_IMPL_NON_NEGATIVE_INT_ATTR NS_IMPL_NON_NEGATIVE_INT_ATTR_DEFAULT_VALUE
  syn keyword moz_util  NS_IMPL_NSICONSTRAINTVALIDATION
  syn keyword moz_util  NS_IMPL_NSICONSTRAINTVALIDATION_EXCEPT_SETCUSTOMVALIDITY
  syn keyword moz_util  NS_IMPL_NSIDOCUMENTOBSERVER_CONTENT NS_IMPL_NSIDOCUMENTOBSERVER_CORE_STUB
  syn keyword moz_util  NS_IMPL_NSIDOCUMENTOBSERVER_LOAD_STUB NS_IMPL_NSIDOCUMENTOBSERVER_STATE_STUB
  syn keyword moz_util  NS_IMPL_NSIDOCUMENTOBSERVER_STYLE_STUB NS_IMPL_NSIMUTATIONOBSERVER_CONTENT
  syn keyword moz_util  NS_IMPL_NSIMUTATIONOBSERVER_CORE_STUB NS_IMPL_NS_NEW_HTML_ELEMENT
  syn keyword moz_util  NS_IMPL_NS_NEW_HTML_ELEMENT_CHECK_PARSER NS_IMPL_NS_NEW_SVG_ELEMENT
  syn keyword moz_util  NS_IMPL_NS_NEW_SVG_ELEMENT_CHECK_PARSER NS_IMPL_QUERY_BODY
  syn keyword moz_util  NS_IMPL_QUERY_BODY_AGGREGATED NS_IMPL_QUERY_BODY_AMBIGUOUS
  syn keyword moz_util  NS_IMPL_QUERY_BODY_CONDITIONAL NS_IMPL_QUERY_CLASSINFO
  syn keyword moz_util  NS_IMPL_QUERY_CYCLE_COLLECTION NS_IMPL_QUERY_CYCLE_COLLECTION_ISUPPORTS
  syn keyword moz_util  NS_IMPL_QUERY_HEAD NS_IMPL_QUERY_INTERFACE0 NS_IMPL_QUERY_INTERFACE1
  syn keyword moz_util  NS_IMPL_QUERY_INTERFACE1_CI NS_IMPL_QUERY_INTERFACE2 NS_IMPL_QUERY_INTERFACE2_CI
  syn keyword moz_util  NS_IMPL_QUERY_INTERFACE3 NS_IMPL_QUERY_INTERFACE3_CI NS_IMPL_QUERY_INTERFACE4
  syn keyword moz_util  NS_IMPL_QUERY_INTERFACE4_CI NS_IMPL_QUERY_INTERFACE5 NS_IMPL_QUERY_INTERFACE5_CI
  syn keyword moz_util  NS_IMPL_QUERY_INTERFACE6 NS_IMPL_QUERY_INTERFACE6_CI NS_IMPL_QUERY_INTERFACE7
  syn keyword moz_util  NS_IMPL_QUERY_INTERFACE7_CI NS_IMPL_QUERY_INTERFACE8 NS_IMPL_QUERY_INTERFACE8_CI
  syn keyword moz_util  NS_IMPL_QUERY_INTERFACE9 NS_IMPL_QUERY_INTERFACE9_CI NS_IMPL_QUERY_INTERFACE10
  syn keyword moz_util  NS_IMPL_QUERY_INTERFACE10_CI NS_IMPL_QUERY_INTERFACE11
  syn keyword moz_util  NS_IMPL_QUERY_INTERFACE11_CI NS_IMPL_QUERY_INTERFACE_INHERITED0
  syn keyword moz_util  NS_IMPL_QUERY_INTERFACE_INHERITED1 NS_IMPL_QUERY_INTERFACE_INHERITED2
  syn keyword moz_util  NS_IMPL_QUERY_INTERFACE_INHERITED3 NS_IMPL_QUERY_INTERFACE_INHERITED4
  syn keyword moz_util  NS_IMPL_QUERY_INTERFACE_INHERITED5 NS_IMPL_QUERY_INTERFACE_INHERITED6
  syn keyword moz_util  NS_IMPL_QUERY_INTERFACE_INHERITED7 NS_IMPL_QUERY_INTERFACE_INHERITED8
  syn keyword moz_util  NS_IMPL_QUERY_INTERFACE_INHERITED9 NS_IMPL_QUERY_INTERFACE_INHERITED10
  syn keyword moz_util  NS_IMPL_QUERY_TAIL NS_IMPL_QUERY_TAIL_INHERITING
  syn keyword moz_util  NS_IMPL_QUERY_TAIL_USING_AGGREGATOR NS_IMPL_RELEASE NS_IMPL_RELEASE_INHERITED
  syn keyword moz_util  NS_IMPL_RELEASE_USING_AGGREGATOR NS_IMPL_RELEASE_WITH_DESTROY
  syn keyword moz_util  NS_IMPL_REMOVE_SYSTEM_EVENT_LISTENER NS_IMPL_SETTER NS_IMPL_SETTER_STR
  syn keyword moz_util  NS_IMPL_STRING_ATTR NS_IMPL_STRING_ATTR_WITH_FALLBACK NS_IMPL_THREADSAFE_ADDREF
  syn keyword moz_util  NS_IMPL_THREADSAFE_CI NS_IMPL_THREADSAFE_ISUPPORTS0
  syn keyword moz_util  NS_IMPL_THREADSAFE_ISUPPORTS1 NS_IMPL_THREADSAFE_ISUPPORTS2
  syn keyword moz_util  NS_IMPL_THREADSAFE_ISUPPORTS3 NS_IMPL_THREADSAFE_ISUPPORTS4
  syn keyword moz_util  NS_IMPL_THREADSAFE_ISUPPORTS5 NS_IMPL_THREADSAFE_ISUPPORTS6
  syn keyword moz_util  NS_IMPL_THREADSAFE_ISUPPORTS7 NS_IMPL_THREADSAFE_ISUPPORTS8
  syn keyword moz_util  NS_IMPL_THREADSAFE_ISUPPORTS9 NS_IMPL_THREADSAFE_ISUPPORTS10
  syn keyword moz_util  NS_IMPL_THREADSAFE_ISUPPORTS11 NS_IMPL_THREADSAFE_RELEASE NS_IMPL_UINT_ATTR
  syn keyword moz_util  NS_IMPL_UINT_ATTR_DEFAULT_VALUE NS_IMPL_UINT_ATTR_NON_ZERO
  syn keyword moz_util  NS_IMPL_UINT_ATTR_NON_ZERO_DEFAULT_VALUE NS_IMPL_URI_ATTR
  syn keyword moz_util  NS_IMPL_URI_ATTR_WITH_BASE NS_IMPL_ZEROING_OPERATOR_NEW


"|
"| Gecko NS_IMPL Constants
"|------------------------------------------------------------------------------
"| find src/mozilla -regex ".*\.\(idl\|h\)" -exec grep "^#define\s*NS_IMPL" '{}' \;  \
"|   | sed 's/^#define\s*//' | sed 's/\s.*$//' | grep '(' -v                         \
"|   | sort -u
"|

  syn keyword moz_impl  NS_IMPLEMENT_FULLVISITRESULT
  syn keyword moz_impl  NS_IMPLEMENT_SIMPLE_RESULTNODE
  syn keyword moz_impl  NS_IMPLEMENT_SIMPLE_RESULTNODE_NO_GETITEMMID
  syn keyword moz_impl  NS_IMPLEMENT_VISITRESULT
  syn keyword moz_impl  NS_IMPL_CYCLE_COLLECTION_TRACE_END
  syn keyword moz_impl  NS_IMPL_CYCLE_COLLECTION_TRACE_PRESERVED_WRAPPER
  syn keyword moz_impl  NS_IMPL_CYCLE_COLLECTION_TRAVERSE_END
  syn keyword moz_impl  NS_IMPL_CYCLE_COLLECTION_TRAVERSE_LISTENERMANAGER
  syn keyword moz_impl  NS_IMPL_CYCLE_COLLECTION_TRAVERSE_SCRIPT_OBJECTS
  syn keyword moz_impl  NS_IMPL_CYCLE_COLLECTION_TRAVERSE_USERDATA
  syn keyword moz_impl  NS_IMPL_CYCLE_COLLECTION_UNLINK_END
  syn keyword moz_impl  NS_IMPL_CYCLE_COLLECTION_UNLINK_LISTENERMANAGER
  syn keyword moz_impl  NS_IMPL_CYCLE_COLLECTION_UNLINK_PRESERVED_WRAPPER
  syn keyword moz_impl  NS_IMPL_CYCLE_COLLECTION_UNLINK_USERDATA
  syn keyword moz_impl  NS_IMPL_QUERY_TAIL_GUTS
  syn keyword moz_impl  NS_IMPL_THREADSAFE_QUERY_INTERFACE0
  syn keyword moz_impl  NS_IMPL_THREADSAFE_QUERY_INTERFACE1
  syn keyword moz_impl  NS_IMPL_THREADSAFE_QUERY_INTERFACE2
  syn keyword moz_impl  NS_IMPL_THREADSAFE_QUERY_INTERFACE3
  syn keyword moz_impl  NS_IMPL_THREADSAFE_QUERY_INTERFACE4
  syn keyword moz_impl  NS_IMPL_THREADSAFE_QUERY_INTERFACE5
  syn keyword moz_impl  NS_IMPL_THREADSAFE_QUERY_INTERFACE6
  syn keyword moz_impl  NS_IMPL_THREADSAFE_QUERY_INTERFACE7
  syn keyword moz_impl  NS_IMPL_THREADSAFE_QUERY_INTERFACE8
  syn keyword moz_impl  NS_IMPL_THREADSAFE_QUERY_INTERFACE9
  syn keyword moz_impl  NS_IMPL_THREADSAFE_QUERY_INTERFACE10
  syn keyword moz_impl  NS_IMPL_THREADSAFE_QUERY_INTERFACE11


"|
"| Gecko NS_INTERFACE Macros
"|------------------------------------------------------------------------------
"| find src/mozilla -regex ".*\.\(idl\|h\)" -exec grep "^#define\s*NS_INTERFACE" '{}' \;  \
"|   | sed 's/^#define\s*//' | sed 's/\s.*$//' | grep '(' | sed 's/(.*$//'                \
"|   | sort -u
"|

  syn keyword moz_util  NS_INTERFACE_MAP_BEGIN NS_INTERFACE_MAP_BEGIN_AGGREGATED
  syn keyword moz_util  NS_INTERFACE_MAP_BEGIN_CYCLE_COLLECTION
  syn keyword moz_util  NS_INTERFACE_MAP_BEGIN_CYCLE_COLLECTION_INHERITED
  syn keyword moz_util  NS_INTERFACE_MAP_END_AGGREGATED NS_INTERFACE_MAP_END_INHERITING
  syn keyword moz_util  NS_INTERFACE_MAP_ENTRIES_CYCLE_COLLECTION
  syn keyword moz_util  NS_INTERFACE_MAP_ENTRIES_CYCLE_COLLECTION_AGGREGATED NS_INTERFACE_MAP_ENTRY
  syn keyword moz_util  NS_INTERFACE_MAP_ENTRY_AGGREGATED NS_INTERFACE_MAP_ENTRY_AMBIGUOUS
  syn keyword moz_util  NS_INTERFACE_MAP_ENTRY_CONDITIONAL NS_INTERFACE_MAP_ENTRY_CYCLE_COLLECTION
  syn keyword moz_util  NS_INTERFACE_MAP_ENTRY_CYCLE_COLLECTION_AGGREGATED
  syn keyword moz_util  NS_INTERFACE_MAP_ENTRY_CYCLE_COLLECTION_ISUPPORTS
  syn keyword moz_util  NS_INTERFACE_MAP_ENTRY_EXTERNAL_DOM_CLASSINFO NS_INTERFACE_MAP_ENTRY_IF_TAG
  syn keyword moz_util  NS_INTERFACE_MAP_ENTRY_TEAROFF NS_INTERFACE_MAP_STATIC_AMBIGUOUS
  syn keyword moz_util  NS_INTERFACE_TABLE0 NS_INTERFACE_TABLE1 NS_INTERFACE_TABLE2 NS_INTERFACE_TABLE3
  syn keyword moz_util  NS_INTERFACE_TABLE4 NS_INTERFACE_TABLE5 NS_INTERFACE_TABLE6 NS_INTERFACE_TABLE7
  syn keyword moz_util  NS_INTERFACE_TABLE8 NS_INTERFACE_TABLE9 NS_INTERFACE_TABLE10
  syn keyword moz_util  NS_INTERFACE_TABLE11 NS_INTERFACE_TABLE_END_WITH_PTR NS_INTERFACE_TABLE_ENTRY
  syn keyword moz_util  NS_INTERFACE_TABLE_ENTRY_AMBIGUOUS NS_INTERFACE_TABLE_HEAD
  syn keyword moz_util  NS_INTERFACE_TABLE_HEAD_CYCLE_COLLECTION_INHERITED NS_INTERFACE_TABLE_INHERITED0
  syn keyword moz_util  NS_INTERFACE_TABLE_INHERITED1 NS_INTERFACE_TABLE_INHERITED2
  syn keyword moz_util  NS_INTERFACE_TABLE_INHERITED3 NS_INTERFACE_TABLE_INHERITED4
  syn keyword moz_util  NS_INTERFACE_TABLE_INHERITED5 NS_INTERFACE_TABLE_INHERITED6
  syn keyword moz_util  NS_INTERFACE_TABLE_INHERITED7 NS_INTERFACE_TABLE_INHERITED8
  syn keyword moz_util  NS_INTERFACE_TABLE_INHERITED9 NS_INTERFACE_TABLE_INHERITED10
  syn keyword moz_util  NS_INTERFACE_TABLE_INHERITED11 NS_INTERFACE_TABLE_INHERITED12
  syn keyword moz_util  NS_INTERFACE_TABLE_TAIL_INHERITING NS_INTERFACE_TABLE_TAIL_USING_AGGREGATOR
  syn keyword moz_util  NS_INTERFACE_TABLE_TO_MAP_SEGUE_CYCLE_COLLECTION


"|
"| Gecko NS_INTERFACE Constants
"|------------------------------------------------------------------------------
"| find src/mozilla -regex ".*\.\(idl\|h\)" -exec grep "^#define\s*NS_INTERFACE" '{}' \;  \
"|   | sed 's/^#define\s*//' | sed 's/\s.*$//' | grep '(' -v                              \
"|   | sort -u
"|

  syn keyword moz_interface  NS_INTERFACEINFOMANAGER_SERVICE_CID
  syn keyword moz_interface  NS_INTERFACEINFOMANAGER_SERVICE_CLASSNAME
  syn keyword moz_interface  NS_INTERFACEINFOMANAGER_SERVICE_CONTRACTID
  syn keyword moz_interface  NS_INTERFACE_MAP_END
  syn keyword moz_interface  NS_INTERFACE_MAP_END_THREADSAFE
  syn keyword moz_interface  NS_INTERFACE_TABLE_BEGIN
  syn keyword moz_interface  NS_INTERFACE_TABLE_END
  syn keyword moz_interface  NS_INTERFACE_TABLE_TAIL
  syn keyword moz_interface  NS_INTERFACE_TABLE_TO_MAP_SEGUE


"|
"| Gecko NS_ERROR Macros
"|------------------------------------------------------------------------------
"| find src/mozilla -regex ".*\.\(idl\|h\)" -exec grep "^#define\s*NS_ERROR" '{}' \; \
"|   | sed 's/^#define\s*//' | sed 's/\s.*$//' | grep '(' | sed 's/(.*$//'           \
"|   | sort -u
"|

  syn keyword moz_util  NS_ERROR
  syn keyword moz_util  NS_ERROR_GENERATE
  syn keyword moz_util  NS_ERROR_GENERATE_FAILURE
  syn keyword moz_util  NS_ERROR_GENERATE_SUCCESS
  syn keyword moz_util  NS_ERROR_GET_CODE
  syn keyword moz_util  NS_ERROR_GET_MODULE
  syn keyword moz_util  NS_ERROR_GET_SEVERITY


"|
"| Gecko NS_ERROR Constants
"|------------------------------------------------------------------------------
"| manually extracted from src/mozilla/xpcom/base/nsError.h
"|

  syn keyword moz_error  NS_ERROR_BASE
  syn keyword moz_error  NS_ERROR_ABORT NS_ERROR_ALREADY_INITIALIZED NS_ERROR_FACTORY_EXISTS
  syn keyword moz_error  NS_ERROR_FACTORY_NOT_LOADED NS_ERROR_FACTORY_NOT_REGISTERED
  syn keyword moz_error  NS_ERROR_FACTORY_NO_SIGNATURE_SUPPORT NS_ERROR_FACTORY_REGISTER_AGAIN
  syn keyword moz_error  NS_ERROR_FAILURE NS_ERROR_ILLEGAL_VALUE NS_ERROR_INVALID_ARG
  syn keyword moz_error  NS_ERROR_INVALID_POINTER NS_ERROR_NOT_AVAILABLE NS_ERROR_NOT_IMPLEMENTED
  syn keyword moz_error  NS_ERROR_NOT_INITIALIZED NS_ERROR_NO_AGGREGATION NS_ERROR_NO_INTERFACE
  syn keyword moz_error  NS_ERROR_NULL_POINTER NS_ERROR_OUT_OF_MEMORY NS_ERROR_UNEXPECTED NS_NOINTERFACE
  syn keyword moz_error  NS_ERROR_MODULE_XPCOM
  syn keyword moz_error  NS_ERROR_CANNOT_CONVERT_DATA NS_ERROR_OBJECT_IS_IMMUTABLE
  syn keyword moz_error  NS_ERROR_LOSS_OF_SIGNIFICANT_DATA NS_ERROR_NOT_SAME_THREAD
  syn keyword moz_error  NS_ERROR_ILLEGAL_DURING_SHUTDOWN NS_ERROR_SERVICE_NOT_AVAILABLE
  syn keyword moz_error  NS_SUCCESS_LOSS_OF_INSIGNIFICANT_DATA NS_SUCCESS_INTERRUPTED_TRAVERSE
  syn keyword moz_error  NS_ERROR_MODULE_BASE
  syn keyword moz_error  NS_BASE_STREAM_CLOSED NS_BASE_STREAM_OSERROR NS_BASE_STREAM_ILLEGAL_ARGS
  syn keyword moz_error  NS_BASE_STREAM_NO_CONVERTER NS_BASE_STREAM_BAD_CONVERSION
  syn keyword moz_error  NS_BASE_STREAM_WOULD_BLOCK
  syn keyword moz_error  NS_ERROR_MODULE_GFX
  syn keyword moz_error  NS_ERROR_GFX_PRINTER_CMD_NOT_FOUND NS_ERROR_GFX_PRINTER_CMD_FAILURE
  syn keyword moz_error  NS_ERROR_GFX_PRINTER_NO_PRINTER_AVAILABLE NS_ERROR_GFX_PRINTER_NAME_NOT_FOUND
  syn keyword moz_error  NS_ERROR_GFX_PRINTER_ACCESS_DENIED NS_ERROR_GFX_PRINTER_INVALID_ATTRIBUTE
  syn keyword moz_error  NS_ERROR_GFX_PRINTER_PRINTER_NOT_READY NS_ERROR_GFX_PRINTER_OUT_OF_PAPER
  syn keyword moz_error  NS_ERROR_GFX_PRINTER_PRINTER_IO_ERROR NS_ERROR_GFX_PRINTER_COULD_NOT_OPEN_FILE
  syn keyword moz_error  NS_ERROR_GFX_PRINTER_FILE_IO_ERROR NS_ERROR_GFX_PRINTER_PRINTPREVIEW
  syn keyword moz_error  NS_ERROR_GFX_PRINTER_STARTDOC NS_ERROR_GFX_PRINTER_ENDDOC
  syn keyword moz_error  NS_ERROR_GFX_PRINTER_STARTPAGE NS_ERROR_GFX_PRINTER_ENDPAGE
  syn keyword moz_error  NS_ERROR_GFX_PRINTER_PRINT_WHILE_PREVIEW
  syn keyword moz_error  NS_ERROR_GFX_PRINTER_PAPER_SIZE_NOT_SUPPORTED
  syn keyword moz_error  NS_ERROR_GFX_PRINTER_ORIENTATION_NOT_SUPPORTED
  syn keyword moz_error  NS_ERROR_GFX_PRINTER_COLORSPACE_NOT_SUPPORTED
  syn keyword moz_error  NS_ERROR_GFX_PRINTER_TOO_MANY_COPIES
  syn keyword moz_error  NS_ERROR_GFX_PRINTER_DRIVER_CONFIGURATION_ERROR
  syn keyword moz_error  NS_ERROR_GFX_PRINTER_DOC_IS_BUSY_PP NS_ERROR_GFX_PRINTER_DOC_WAS_DESTORYED
  syn keyword moz_error  NS_ERROR_GFX_PRINTER_NO_XUL NS_ERROR_GFX_NO_PRINTDIALOG_IN_TOOLKIT
  syn keyword moz_error  NS_ERROR_GFX_NO_PRINTROMPTSERVICE NS_ERROR_GFX_PRINTER_PLEX_NOT_SUPPORTED
  syn keyword moz_error  NS_ERROR_GFX_PRINTER_DOC_IS_BUSY NS_ERROR_GFX_PRINTING_NOT_IMPLEMENTED
  syn keyword moz_error  NS_ERROR_GFX_COULD_NOT_LOAD_PRINT_MODULE
  syn keyword moz_error  NS_ERROR_GFX_PRINTER_RESOLUTION_NOT_SUPPORTED NS_ERROR_GFX_CMAP_MALFORMED
  syn keyword moz_error  NS_ERROR_MODULE_WIDGET
  syn keyword moz_error  NS_SUCCESS_IME_NO_UPDATES
  syn keyword moz_error  NS_ERROR_MODULE_NETWORK
  syn keyword moz_error  NS_BINDING_SUCCEEDED NS_BINDING_FAILED NS_BINDING_ABORTED NS_BINDING_REDIRECTED
  syn keyword moz_error  NS_BINDING_RETARGETED NS_ERROR_MALFORMED_URI NS_ERROR_IN_PROGRESS
  syn keyword moz_error  NS_ERROR_NO_CONTENT NS_ERROR_UNKNOWN_PROTOCOL NS_ERROR_INVALID_CONTENT_ENCODING
  syn keyword moz_error  NS_ERROR_CORRUPTED_CONTENT NS_ERROR_FIRST_HEADER_FIELD_COMPONENT_EMPTY
  syn keyword moz_error  NS_ERROR_ALREADY_OPENED NS_ERROR_ALREADY_CONNECTED NS_ERROR_NOT_CONNECTED
  syn keyword moz_error  NS_ERROR_CONNECTION_REFUSED NS_ERROR_NET_TIMEOUT NS_ERROR_OFFLINE
  syn keyword moz_error  NS_ERROR_PORT_ACCESS_NOT_ALLOWED NS_ERROR_NET_RESET NS_ERROR_NET_INTERRUPT
  syn keyword moz_error  NS_ERROR_PROXY_CONNECTION_REFUSED NS_ERROR_NOT_RESUMABLE NS_ERROR_REDIRECT_LOOP
  syn keyword moz_error  NS_ERROR_ENTITY_CHANGED NS_ERROR_UNSAFE_CONTENT_TYPE NS_ERROR_REMOTE_XUL
  syn keyword moz_error  NS_ERROR_FTP_LOGIN NS_ERROR_FTP_CWD NS_ERROR_FTP_PASV NS_ERROR_FTP_PWD
  syn keyword moz_error  NS_ERROR_FTP_LIST NS_ERROR_UNKNOWN_HOST NS_ERROR_DNS_LOOKUP_QUEUE_FULL
  syn keyword moz_error  NS_ERROR_UNKNOWN_PROXY_HOST NS_ERROR_UNKNOWN_SOCKET_TYPE
  syn keyword moz_error  NS_ERROR_SOCKET_CREATE_FAILED NS_ERROR_CACHE_KEY_NOT_FOUND
  syn keyword moz_error  NS_ERROR_CACHE_DATA_IS_STREAM NS_ERROR_CACHE_DATA_IS_NOT_STREAM
  syn keyword moz_error  NS_ERROR_CACHE_WAIT_FOR_VALIDATION NS_ERROR_CACHE_ENTRY_DOOMED
  syn keyword moz_error  NS_ERROR_CACHE_READ_ACCESS_DENIED NS_ERROR_CACHE_WRITE_ACCESS_DENIED
  syn keyword moz_error  NS_ERROR_CACHE_IN_USE NS_ERROR_DOCUMENT_NOT_CACHED
  syn keyword moz_error  NS_ERROR_INSUFFICIENT_DOMAIN_LEVELS NS_ERROR_HOST_IS_IP_ADDRESS
  syn keyword moz_error  NS_SUCCESS_ADOPTED_DATA NS_NET_STATUS_BEGIN_FTP_TRANSACTION
  syn keyword moz_error  NS_NET_STATUS_END_FTP_TRANSACTION NS_SUCCESS_AUTH_FINISHED NS_NET_STATUS_READING
  syn keyword moz_error  NS_NET_STATUS_WRITING NS_NET_STATUS_RESOLVING_HOST NS_NET_STATUS_RESOLVED_HOST
  syn keyword moz_error  NS_NET_STATUS_CONNECTING_TO NS_NET_STATUS_CONNECTED_TO NS_NET_STATUS_SENDING_TO
  syn keyword moz_error  NS_NET_STATUS_WAITING_FOR NS_NET_STATUS_RECEIVING_FROM
  syn keyword moz_error  NS_ERROR_MODULE_PLUGINS
  syn keyword moz_error  NS_ERROR_PLUGINS_PLUGINSNOTCHANGED NS_ERROR_PLUGIN_DISABLED
  syn keyword moz_error  NS_ERROR_PLUGIN_BLOCKLISTED NS_ERROR_PLUGIN_TIME_RANGE_NOT_SUPPORTED
  syn keyword moz_error  NS_ERROR_PLUGIN_CLICKTOPLAY
  syn keyword moz_error  NS_ERROR_MODULE_LAYOUT
  syn keyword moz_error  NS_TABLELAYOUT_CELL_NOT_FOUND NS_POSITION_BEFORE_TABLE NS_STATE_PROPERTY_EXISTS
  syn keyword moz_error  NS_STATE_PROPERTY_NOT_THERE
  syn keyword moz_error  NS_ERROR_MODULE_HTMLPARSER
  syn keyword moz_error  NS_ERROR_HTMLPARSER_CONTINUE NS_ERROR_HTMLPARSER_EOF NS_ERROR_HTMLPARSER_UNKNOWN
  syn keyword moz_error  NS_ERROR_HTMLPARSER_CANTPROPAGATE NS_ERROR_HTMLPARSER_CONTEXTMISMATCH
  syn keyword moz_error  NS_ERROR_HTMLPARSER_BADFILENAME NS_ERROR_HTMLPARSER_BADURL
  syn keyword moz_error  NS_ERROR_HTMLPARSER_INVALIDPARSERCONTEXT NS_ERROR_HTMLPARSER_INTERRUPTED
  syn keyword moz_error  NS_ERROR_HTMLPARSER_BLOCK NS_ERROR_HTMLPARSER_BADTOKENIZER
  syn keyword moz_error  NS_ERROR_HTMLPARSER_BADATTRIBUTE NS_ERROR_HTMLPARSER_UNRESOLVEDDTD
  syn keyword moz_error  NS_ERROR_HTMLPARSER_MISPLACEDTABLECONTENT NS_ERROR_HTMLPARSER_BADDTD
  syn keyword moz_error  NS_ERROR_HTMLPARSER_BADCONTEXT NS_ERROR_HTMLPARSER_STOPPARSING
  syn keyword moz_error  NS_ERROR_HTMLPARSER_UNTERMINATEDSTRINGLITERAL
  syn keyword moz_error  NS_ERROR_HTMLPARSER_HIERARCHYTOODEEP NS_ERROR_HTMLPARSER_FAKE_ENDTAG
  syn keyword moz_error  NS_ERROR_HTMLPARSER_INVALID_COMMENT NS_HTMLTOKENS_NOT_AN_ENTITY
  syn keyword moz_error  NS_HTMLPARSER_VALID_META_CHARSET
  syn keyword moz_error  NS_ERROR_MODULE_RDF
  syn keyword moz_error  NS_RDF_ASSERTION_ACCEPTED NS_RDF_CURSOR_EMPTY NS_RDF_NO_VALUE
  syn keyword moz_error  NS_RDF_ASSERTION_REJECTED NS_RDF_STOP_VISIT
  syn keyword moz_error  NS_ERROR_MODULE_UCONV
  syn keyword moz_error  NS_ERROR_UCONV_NOCONV NS_ERROR_UDEC_ILLEGALINPUT
  syn keyword moz_error  NS_SUCCESS_USING_FALLBACK_LOCALE NS_OK_UDEC_EXACTLENGTH NS_OK_UDEC_MOREINPUT
  syn keyword moz_error  NS_OK_UDEC_MOREOUTPUT NS_OK_UDEC_NOBOMFOUND NS_OK_UENC_EXACTLENGTH
  syn keyword moz_error  NS_OK_UENC_MOREOUTPUT NS_ERROR_UENC_NOMAPPING NS_OK_UENC_MOREINPUT
  syn keyword moz_error  NS_ERROR_MODULE_FILES
  syn keyword moz_error  NS_ERROR_FILE_UNRECOGNIZED_PATH NS_ERROR_FILE_UNRESOLVABLE_SYMLINK
  syn keyword moz_error  NS_ERROR_FILE_EXECUTION_FAILED NS_ERROR_FILE_UNKNOWN_TYPE
  syn keyword moz_error  NS_ERROR_FILE_DESTINATION_NOT_DIR NS_ERROR_FILE_TARGET_DOES_NOT_EXIST
  syn keyword moz_error  NS_ERROR_FILE_COPY_OR_MOVE_FAILED NS_ERROR_FILE_ALREADY_EXISTS
  syn keyword moz_error  NS_ERROR_FILE_INVALID_PATH NS_ERROR_FILE_DISK_FULL NS_ERROR_FILE_CORRUPTED
  syn keyword moz_error  NS_ERROR_FILE_NOT_DIRECTORY NS_ERROR_FILE_IS_DIRECTORY NS_ERROR_FILE_IS_LOCKED
  syn keyword moz_error  NS_ERROR_FILE_TOO_BIG NS_ERROR_FILE_NO_DEVICE_SPACE NS_ERROR_FILE_NAME_TOO_LONG
  syn keyword moz_error  NS_ERROR_FILE_NOT_FOUND NS_ERROR_FILE_READ_ONLY NS_ERROR_FILE_DIR_NOT_EMPTY
  syn keyword moz_error  NS_ERROR_FILE_ACCESS_DENIED NS_SUCCESS_FILE_DIRECTORY_EMPTY
  syn keyword moz_error  NS_SUCCESS_AGGREGATE_RESULT
  syn keyword moz_error  NS_ERROR_MODULE_DOM
  syn keyword moz_error  NS_ERROR_DOM_INDEX_SIZE_ERR NS_ERROR_DOM_HIERARCHY_REQUEST_ERR
  syn keyword moz_error  NS_ERROR_DOM_WRONG_DOCUMENT_ERR NS_ERROR_DOM_INVALID_CHARACTER_ERR
  syn keyword moz_error  NS_ERROR_DOM_NO_MODIFICATION_ALLOWED_ERR NS_ERROR_DOM_NOT_FOUND_ERR
  syn keyword moz_error  NS_ERROR_DOM_NOT_SUPPORTED_ERR NS_ERROR_DOM_INUSE_ATTRIBUTE_ERR
  syn keyword moz_error  NS_ERROR_DOM_INVALID_STATE_ERR NS_ERROR_DOM_SYNTAX_ERR
  syn keyword moz_error  NS_ERROR_DOM_INVALID_MODIFICATION_ERR NS_ERROR_DOM_NAMESPACE_ERR
  syn keyword moz_error  NS_ERROR_DOM_INVALID_ACCESS_ERR NS_ERROR_DOM_TYPE_MISMATCH_ERR
  syn keyword moz_error  NS_ERROR_DOM_SECURITY_ERR NS_ERROR_DOM_NETWORK_ERR NS_ERROR_DOM_ABORT_ERR
  syn keyword moz_error  NS_ERROR_DOM_URL_MISMATCH_ERR NS_ERROR_DOM_QUOTA_EXCEEDED_ERR
  syn keyword moz_error  NS_ERROR_DOM_TIMEOUT_ERR NS_ERROR_DOM_INVALID_NODE_TYPE_ERR
  syn keyword moz_error  NS_ERROR_DOM_DATA_CLONE_ERR NS_ERROR_TYPE_ERR NS_ERROR_RANGE_ERR
  syn keyword moz_error  NS_ERROR_DOM_ENCODING_NOT_SUPPORTED_ERR NS_ERROR_DOM_ENCODING_NOT_UTF_ERR
  syn keyword moz_error  NS_ERROR_DOM_ENCODING_DECODE_ERR NS_ERROR_DOM_SECMAN_ERR
  syn keyword moz_error  NS_ERROR_DOM_WRONG_TYPE_ERR NS_ERROR_DOM_NOT_OBJECT_ERR
  syn keyword moz_error  NS_ERROR_DOM_NOT_XPC_OBJECT_ERR NS_ERROR_DOM_NOT_NUMBER_ERR
  syn keyword moz_error  NS_ERROR_DOM_NOT_BOOLEAN_ERR NS_ERROR_DOM_NOT_FUNCTION_ERR
  syn keyword moz_error  NS_ERROR_DOM_TOO_FEW_PARAMETERS_ERR NS_ERROR_DOM_BAD_DOCUMENT_DOMAIN
  syn keyword moz_error  NS_ERROR_DOM_PROP_ACCESS_DENIED NS_ERROR_DOM_XPCONNECT_ACCESS_DENIED
  syn keyword moz_error  NS_ERROR_DOM_BAD_URI NS_ERROR_DOM_RETVAL_UNED NS_ERROR_DOM_QUOTA_REACHED
  syn keyword moz_error  NS_ERROR_MODULE_IMGLIB
  syn keyword moz_error  NS_IMAGELIB_SUCCESS_LOAD_FINISHED NS_IMAGELIB_CHANGING_OWNER
  syn keyword moz_error  NS_IMAGELIB_ERROR_FAILURE NS_IMAGELIB_ERROR_NO_DECODER
  syn keyword moz_error  NS_IMAGELIB_ERROR_NOT_FINISHED NS_IMAGELIB_ERROR_NO_ENCODER
  syn keyword moz_error  NS_ERROR_MODULE_EDITOR
  syn keyword moz_error  NS_ERROR_EDITOR_NO_SELECTION NS_ERROR_EDITOR_NO_TEXTNODE NS_FOUND_TARGET
  syn keyword moz_error  NS_EDITOR_ELEMENT_NOT_FOUND
  syn keyword moz_error  NS_ERROR_MODULE_XPCONNECT
  syn keyword moz_error  NS_ERROR_XPC_NOT_ENOUGH_ARGS NS_ERROR_XPC_NEED_OUT_OBJECT
  syn keyword moz_error  NS_ERROR_XPC_CANT_SET_OUT_VAL NS_ERROR_XPC_NATIVE_RETURNED_FAILURE
  syn keyword moz_error  NS_ERROR_XPC_CANT_GET_INTERFACE_INFO NS_ERROR_XPC_CANT_GET_PARAM_IFACE_INFO
  syn keyword moz_error  NS_ERROR_XPC_CANT_GET_METHOD_INFO NS_ERROR_XPC_UNEXPECTED
  syn keyword moz_error  NS_ERROR_XPC_BAD_CONVERT_JS NS_ERROR_XPC_BAD_CONVERT_NATIVE
  syn keyword moz_error  NS_ERROR_XPC_BAD_CONVERT_JS_NULL_REF NS_ERROR_XPC_BAD_OP_ON_WN_PROTO
  syn keyword moz_error  NS_ERROR_XPC_CANT_CONVERT_WN_TO_FUN NS_ERROR_XPC_CANT_DEFINE_PROP_ON_WN
  syn keyword moz_error  NS_ERROR_XPC_CANT_WATCH_WN_STATIC NS_ERROR_XPC_CANT_EXPORT_WN_STATIC
  syn keyword moz_error  NS_ERROR_XPC_SCRIPTABLE_CALL_FAILED NS_ERROR_XPC_SCRIPTABLE_CTOR_FAILED
  syn keyword moz_error  NS_ERROR_XPC_CANT_CALL_WO_SCRIPTABLE NS_ERROR_XPC_CANT_CTOR_WO_SCRIPTABLE
  syn keyword moz_error  NS_ERROR_XPC_CI_RETURNED_FAILURE NS_ERROR_XPC_GS_RETURNED_FAILURE
  syn keyword moz_error  NS_ERROR_XPC_BAD_CID NS_ERROR_XPC_BAD_IID NS_ERROR_XPC_CANT_CREATE_WN
  syn keyword moz_error  NS_ERROR_XPC_JS_THREW_EXCEPTION NS_ERROR_XPC_JS_THREW_NATIVE_OBJECT
  syn keyword moz_error  NS_ERROR_XPC_JS_THREW_JS_OBJECT NS_ERROR_XPC_JS_THREW_NULL
  syn keyword moz_error  NS_ERROR_XPC_JS_THREW_STRING NS_ERROR_XPC_JS_THREW_NUMBER
  syn keyword moz_error  NS_ERROR_XPC_JAVASCRIPT_ERROR NS_ERROR_XPC_JAVASCRIPT_ERROR_WITH_DETAILS
  syn keyword moz_error  NS_ERROR_XPC_CANT_CONVERT_PRIMITIVE_TO_ARRAY
  syn keyword moz_error  NS_ERROR_XPC_CANT_CONVERT_OBJECT_TO_ARRAY
  syn keyword moz_error  NS_ERROR_XPC_NOT_ENOUGH_ELEMENTS_IN_ARRAY NS_ERROR_XPC_CANT_GET_ARRAY_INFO
  syn keyword moz_error  NS_ERROR_XPC_NOT_ENOUGH_CHARS_IN_STRING NS_ERROR_XPC_SECURITY_MANAGER_VETO
  syn keyword moz_error  NS_ERROR_XPC_INTERFACE_NOT_SCRIPTABLE
  syn keyword moz_error  NS_ERROR_XPC_INTERFACE_NOT_FROM_NSISUPPORTS
  syn keyword moz_error  NS_ERROR_XPC_CANT_GET_JSOBJECT_OF_DOM_OBJECT
  syn keyword moz_error  NS_ERROR_XPC_CANT_SET_READ_ONLY_CONSTANT
  syn keyword moz_error  NS_ERROR_XPC_CANT_SET_READ_ONLY_ATTRIBUTE NS_ERROR_XPC_CANT_SET_READ_ONLY_METHOD
  syn keyword moz_error  NS_ERROR_XPC_CANT_ADD_PROP_TO_WRAPPED_NATIVE
  syn keyword moz_error  NS_ERROR_XPC_CALL_TO_SCRIPTABLE_FAILED
  syn keyword moz_error  NS_ERROR_XPC_JSOBJECT_HAS_NO_FUNCTION_NAMED NS_ERROR_XPC_BAD_ID_STRING
  syn keyword moz_error  NS_ERROR_XPC_BAD_INITIALIZER_NAME NS_ERROR_XPC_HAS_BEEN_SHUTDOWN
  syn keyword moz_error  NS_ERROR_XPC_CANT_MODIFY_PROP_ON_WN NS_ERROR_XPC_BAD_CONVERT_JS_ZERO_ISNOT_NULL
  syn keyword moz_error  NS_SUCCESS_I_DID_SOMETHING NS_SUCCESS_CHROME_ACCESS_ONLY
  syn keyword moz_error  NS_SUCCESS_ALLOW_SLIM_WRAPPERS
  syn keyword moz_error  NS_ERROR_MODULE_PROFILE
  syn keyword moz_error  NS_ERROR_LAUNCHED_CHILD_PROCESS
  syn keyword moz_error  NS_ERROR_MODULE_SECURITY
  syn keyword moz_error  NS_ERROR_CSP_FRAME_ANCESTOR_VIOLATION NS_ERROR_CMS_VERIFY_NOT_SIGNED
  syn keyword moz_error  NS_ERROR_CMS_VERIFY_NO_CONTENT_INFO NS_ERROR_CMS_VERIFY_BAD_DIGEST
  syn keyword moz_error  NS_ERROR_CMS_VERIFY_NOCERT NS_ERROR_CMS_VERIFY_UNTRUSTED
  syn keyword moz_error  NS_ERROR_CMS_VERIFY_ERROR_UNVERIFIED NS_ERROR_CMS_VERIFY_ERROR_PROCESSING
  syn keyword moz_error  NS_ERROR_CMS_VERIFY_BAD_SIGNATURE NS_ERROR_CMS_VERIFY_DIGEST_MISMATCH
  syn keyword moz_error  NS_ERROR_CMS_VERIFY_UNKNOWN_ALGO NS_ERROR_CMS_VERIFY_UNSUPPORTED_ALGO
  syn keyword moz_error  NS_ERROR_CMS_VERIFY_MALFORMED_SIGNATURE NS_ERROR_CMS_VERIFY_HEADER_MISMATCH
  syn keyword moz_error  NS_ERROR_CMS_VERIFY_NOT_YET_ATTEMPTED NS_ERROR_CMS_VERIFY_CERT_WITHOUT_ADDRESS
  syn keyword moz_error  NS_ERROR_CMS_ENCRYPT_NO_BULK_ALG NS_ERROR_CMS_ENCRYPT_INCOMPLETE
  syn keyword moz_error  NS_ERROR_MODULE_DOM_XPATH
  syn keyword moz_error  NS_ERROR_DOM_INVALID_EXPRESSION_ERR NS_ERROR_DOM_TYPE_ERR
  syn keyword moz_error  NS_ERROR_MODULE_URILOADER
  syn keyword moz_error  NS_ERROR_WONT_HANDLE_CONTENT NS_ERROR_MALWARE_URI NS_ERROR_PHISHING_URI
  syn keyword moz_error  NS_ERROR_SAVE_LINK_AS_TIMEOUT NS_ERROR_PARSED_DATA_CACHED
  syn keyword moz_error  NS_REFRESHURI_HEADER_FOUND
  syn keyword moz_error  NS_ERROR_MODULE_CONTENT
  syn keyword moz_error  NS_ERROR_IMAGE_SRC_CHANGED NS_ERROR_IMAGE_BLOCKED NS_ERROR_CONTENT_BLOCKED
  syn keyword moz_error  NS_ERROR_CONTENT_BLOCKED_SHOW_ALT NS_PROPTABLE_PROP_NOT_THERE
  syn keyword moz_error  NS_ERROR_XBL_BLOCKED NS_HTML_STYLE_PROPERTY_NOT_THERE NS_CONTENT_BLOCKED
  syn keyword moz_error  NS_CONTENT_BLOCKED_SHOW_ALT NS_PROPTABLE_PROP_OVERWRITTEN
  syn keyword moz_error  NS_FINDBROADCASTER_NOT_FOUND NS_FINDBROADCASTER_FOUND
  syn keyword moz_error  NS_FINDBROADCASTER_AWAIT_OVERLAYS
  syn keyword moz_error  NS_ERROR_MODULE_XSLT
  syn keyword moz_error  NS_ERROR_XPATH_INVALID_ARG NS_ERROR_XSLT_PARSE_FAILURE
  syn keyword moz_error  NS_ERROR_XPATH_PARSE_FAILURE NS_ERROR_XSLT_ALREADY_SET
  syn keyword moz_error  NS_ERROR_XSLT_EXECUTION_FAILURE NS_ERROR_XPATH_UNKNOWN_FUNCTION
  syn keyword moz_error  NS_ERROR_XSLT_BAD_RECURSION NS_ERROR_XSLT_BAD_VALUE
  syn keyword moz_error  NS_ERROR_XSLT_NODESET_EXPECTED NS_ERROR_XSLT_ABORTED NS_ERROR_XSLT_NETWORK_ERROR
  syn keyword moz_error  NS_ERROR_XSLT_WRONG_MIME_TYPE NS_ERROR_XSLT_LOAD_RECURSION
  syn keyword moz_error  NS_ERROR_XPATH_BAD_ARGUMENT_COUNT NS_ERROR_XPATH_BAD_EXTENSION_FUNCTION
  syn keyword moz_error  NS_ERROR_XPATH_PAREN_EXPECTED NS_ERROR_XPATH_INVALID_AXIS
  syn keyword moz_error  NS_ERROR_XPATH_NO_NODE_TYPE_TEST NS_ERROR_XPATH_BRACKET_EXPECTED
  syn keyword moz_error  NS_ERROR_XPATH_INVALID_VAR_NAME NS_ERROR_XPATH_UNEXPECTED_END
  syn keyword moz_error  NS_ERROR_XPATH_OPERATOR_EXPECTED NS_ERROR_XPATH_UNCLOSED_LITERAL
  syn keyword moz_error  NS_ERROR_XPATH_BAD_COLON NS_ERROR_XPATH_BAD_BANG NS_ERROR_XPATH_ILLEGAL_CHAR
  syn keyword moz_error  NS_ERROR_XPATH_BINARY_EXPECTED NS_ERROR_XSLT_LOAD_BLOCKED_ERROR
  syn keyword moz_error  NS_ERROR_XPATH_INVALID_EXPRESSION_EVALUATED
  syn keyword moz_error  NS_ERROR_XPATH_UNBALANCED_CURLY_BRACE NS_ERROR_XSLT_BAD_NODE_NAME
  syn keyword moz_error  NS_ERROR_XSLT_VAR_ALREADY_SET NS_XSLT_GET_NEW_HANDLER
  syn keyword moz_error  NS_ERROR_MODULE_SVG
  syn keyword moz_error  NS_ERROR_DOM_SVG_WRONG_TYPE_ERR NS_ERROR_DOM_SVG_MATRIX_NOT_INVERTABLE
  syn keyword moz_error  NS_ERROR_MODULE_STORAGE
  syn keyword moz_error  NS_ERROR_STORAGE_BUSY NS_ERROR_STORAGE_IOERR NS_ERROR_STORAGE_CONSTRAINT
  syn keyword moz_error  NS_ERROR_MODULE_DOM_FILE
  syn keyword moz_error  NS_ERROR_DOM_FILE_NOT_FOUND_ERR NS_ERROR_DOM_FILE_NOT_READABLE_ERR
  syn keyword moz_error  NS_ERROR_DOM_FILE_ABORT_ERR
  syn keyword moz_error  NS_ERROR_MODULE_DOM_INDEXEDDB
  syn keyword moz_error  NS_ERROR_DOM_INDEXEDDB_UNKNOWN_ERR NS_ERROR_DOM_INDEXEDDB_NOT_FOUND_ERR
  syn keyword moz_error  NS_ERROR_DOM_INDEXEDDB_CONSTRAINT_ERR NS_ERROR_DOM_INDEXEDDB_DATA_ERR
  syn keyword moz_error  NS_ERROR_DOM_INDEXEDDB_NOT_ALLOWED_ERR
  syn keyword moz_error  NS_ERROR_DOM_INDEXEDDB_TRANSACTION_INACTIVE_ERR NS_ERROR_DOM_INDEXEDDB_ABORT_ERR
  syn keyword moz_error  NS_ERROR_DOM_INDEXEDDB_READ_ONLY_ERR NS_ERROR_DOM_INDEXEDDB_TIMEOUT_ERR
  syn keyword moz_error  NS_ERROR_DOM_INDEXEDDB_QUOTA_ERR NS_ERROR_DOM_INDEXEDDB_VERSION_ERR
  syn keyword moz_error  NS_ERROR_DOM_INDEXEDDB_RECOVERABLE_ERR
  syn keyword moz_error  NS_ERROR_MODULE_DOM_FILEHANDLE
  syn keyword moz_error  NS_ERROR_DOM_FILEHANDLE_UNKNOWN_ERR NS_ERROR_DOM_FILEHANDLE_NOT_ALLOWED_ERR
  syn keyword moz_error  NS_ERROR_DOM_FILEHANDLE_LOCKEDFILE_INACTIVE_ERR
  syn keyword moz_error  NS_ERROR_DOM_FILEHANDLE_ABORT_ERR NS_ERROR_DOM_FILEHANDLE_READ_ONLY_ERR
  syn keyword moz_error  NS_ERROR_MODULE_GENERAL
  syn keyword moz_error  NS_ERROR_DOWNLOAD_COMPLETE NS_ERROR_DOWNLOAD_NOT_PARTIAL
  syn keyword moz_error  NS_ERROR_UNORM_MOREOUTPUT NS_ERROR_DOCSHELL_REQUEST_REJECTED
  syn keyword moz_error  NS_ERROR_DOCUMENT_IS_PRINTMODE NS_SUCCESS_DONT_FIXUP NS_SUCCESS_RESTART_APP
  syn keyword moz_error  NS_SUCCESS_UNORM_NOTFOUND NS_ERROR_NOT_IN_TREE NS_OK_NO_ARIA_VALUE
  syn keyword moz_error  NS_OK_DEFUNCT_OBJECT NS_OK_EMPTY_NAME NS_OK_NO_NAME_CLAUSE_HANDLED
  syn keyword moz_error  NS_OK_NAME_FROM_TOOLTIP


"|
"| MFBT Macros (Mozilla Framework Based on Templates)
"|------------------------------------------------------------------------------
"| manually extracted from src/mozilla/mfbt/
"|

  syn keyword moz_util  MOZ_ALIGNED_DECL MOZ_ALIGNOF MOZ_ALWAYS_FALSE MOZ_ALWAYS_TRUE MOZ_ASSERT
  syn keyword moz_util  MOZ_ASSERT_GLUE MOZ_ASSERT_IF MOZ_BEGIN_ENUM_CLASS
  syn keyword moz_util  MOZ_CHECKEDINT_BASIC_BINARY_OPERATOR MOZ_CHECKEDINT_CONVENIENCE_BINARY_OPERATORS
  syn keyword moz_util  MOZ_COUNT_ASSERT_ARGS MOZ_COUNT_ASSERT_ARGS_IMPL MOZ_CRASH MOZ_DOUBLE_EXPONENT
  syn keyword moz_util  MOZ_DOUBLE_IS_FINITE MOZ_DOUBLE_IS_INFINITE MOZ_DOUBLE_IS_NEGATIVE
  syn keyword moz_util  MOZ_DOUBLE_IS_NEGATIVE_ZERO MOZ_DOUBLE_MIN_VALUE MOZ_DOUBLE_NEGATIVE_INFINITY
  syn keyword moz_util  MOZ_DOUBLE_POSITIVE_INFINITY MOZ_END_ENUM_CLASS MOZ_ENUM_TYPE MOZ_EXPORT_API
  syn keyword moz_util  MOZ_EXPORT_DATA MOZ_IMPORT_API MOZ_IMPORT_DATA MOZ_LIKELY MOZ_NOT_REACHED
  syn keyword moz_util  MOZ_NOT_REACHED_MARKER MOZ_STATIC_ASSERT MOZ_STATIC_ASSERT_GLUE
  syn keyword moz_util  MOZ_TYPE_SPECIFIC_SCOPED_POINTER_TEMPLATE MOZ_UNLIKELY


"|
"| MFBT Constants (Mozilla Framework Based on Templates)
"|------------------------------------------------------------------------------
"| manually extracted from src/mozilla/mfbt/
"|

  syn keyword moz_mfbt  MOZ_ALWAYS_INLINE MOZ_ASAN_BLACKLIST MOZ_ASSERT_CHOOSE_HELPER MOZ_ASSERT_HELPER
  syn keyword moz_mfbt  MOZ_ASSERTS MOZ_BEGIN_EXTERN_C MOZ_CUSTOM_STDINT_H
  syn keyword moz_mfbt  MOZ_DECL_USE_GUARD_OBJECT_NOTIFIER MOZ_DELETE MOZ_DOUBLE_EXPONENT_BIAS
  syn keyword moz_mfbt  MOZ_DOUBLE_EXPONENT_BITS MOZ_DOUBLE_EXPONENT_SHIFT MOZ_DOUBLE_IS_INT
  syn keyword moz_mfbt  MOZ_DOUBLE_IS_N MOZ_DOUBLE_N MOZ_DOUBLE_SIGN_BIT MOZ_DOUBLE_SIGNIFICAND_BITS
  syn keyword moz_mfbt  MOZ_DOUBLE_SPECIFIC_N MOZ_END_EXTERN_C MOZ_EXTERNAL_VIS MOZ_FINAL
  syn keyword moz_mfbt  MOZ_GLUE_LDFLAGS MOZ_GLUE_PROGRAM_LDFLAGS MOZ_GUARD_OBJECT_NOTIFIER_INIT
  syn keyword moz_mfbt  MOZ_GUARD_OBJECT_NOTIFIER_ONLY_PARAM
  syn keyword moz_mfbt  MOZ_GUARD_OBJECT_NOTIFIER_ONLY_PARAM_TO_PARENT MOZ_GUARD_OBJECT_NOTIFIER_PARAM
  syn keyword moz_mfbt  MOZ_GUARD_OBJECT_NOTIFIER_PARAM_IN_IMPL
  syn keyword moz_mfbt  MOZ_GUARD_OBJECT_NOTIFIER_PARAM_TO_PARENT MOZ_HAVE_CXX MOZ_HAVE_NEVER_INLINE
  syn keyword moz_mfbt  MOZ_HAVE_NORETURN MOZ_INLINE MOZ_IS_LITTLE_ENDIAN MOZ_LIKELY MOZ_NEVER_INLINE
  syn keyword moz_mfbt  MOZ_NORETURN MOZ_OVERRIDE MOZ_WARN_UNUSED_RESULT


"|
"| Highlight Rules
"|------------------------------------------------------------------------------
"|

hi def link moz_component  Type
hi def link moz_dom        Type
hi def link moz_type       Type
hi def link moz_type_ns    Type
hi def link moz_assert     Function
hi def link moz_util       Function
hi def link moz_boolean    Constant
hi def link moz_constant   Constant
hi def link moz_error      Constant
hi def link moz_impl       Constant
hi def link moz_interface  Constant
hi def link moz_mfbt       Constant

